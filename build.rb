#!/usr/bin/env ruby
require "rubygems"
require "maruku"
require "hpricot"
require "json/pure"
require "fileutils"

module TitaniumDocs
	class Build
		
		def initialize(path = File.dirname(__FILE__))
			@path = path
			@src_path ||= @path + "/Source/"
			@build_path ||= @path + "/Build/"
			@assets_path ||= @path + "/Assets/"
		end
		
		def move_assets
			if not @no_assets
				["css/", "scripts/", "images/"].each do |asset|
					begin
						FileUtils.cp_r @assets_path + asset, @build_path, {:remove_destination => true}
						puts "Copying: #{asset}"
					rescue
						puts "Error in copying #{asset}"
					end
				end
			end
		end
		
		def prepare_template
			puts "Preparing template.."
			
			@template_path ||= @assets_path + "templates/"
			
			template_main = @template_path + "main.html"
			template_nav = @template_path + "nav.html"
			template_footer = @template_path + "footer.html"
			
			@document = open(template_main) { |f| Hpricot(f) }
			@nav = open(template_nav) { |f| Hpricot(f) }
			@footer = open(template_footer) { |f| Hpricot(f) }
			
			(@document/"#navigation").inner_html = @nav.inner_html
			(@document/"#footer").inner_html = @footer.inner_html
		end
		
		def parse_nav
			@manifest = JSON.load(open( @src_path + "manifest.json" ))
			if @build_nav
				
				nav_html = ""
				
				@manifest.each_pair do |header, files|
					header = header.gsub(/[0-9\s]*/, "")
					nav_html += "<h2>#{header}</h2>\n<ul>\n"
					
					files.each_pair do |name, title|
						name = name.gsub(/[0-9\s]*/, "")
						ptitle = title != "" && !title.respond_to?(:each_pair) ? title : name
						
						nav_html += nav_item(header, name, ptitle)
						
						if title.respond_to?(:each_pair)		
							nav_html += "<ul>\n"
							title.each_pair do |sub, item|
								sub = sub.gsub(/[0-9\s]*/, "")
								item = item != "" ? item : sub
								nav_html += nav_item(header, sub, item)
							end
							nav_html += "</ul>\n"
						end
					end
					
					nav_html += "</ul>\n"
				end
				(@document/"#navlinks").inner_html += "\n#{nav_html}"
			end
		end
		
		def nav_item(header, name, title)
			return "<li><a href=\"/#{header}/#{name}\" >#{title}</a></li>\n"
		end
		
		def parse_doc(header, name, title)
			path = "#{header.gsub(/[0-9\s]*/, "")}/#{name.gsub(/[0-9\s]*/, "")}"
			doctitle = (@document/"title").inner_html;
			(@document/"title").inner_html = "#{doctitle}: #{title != "" ? title : path}"
			begin
				test = File.read(@src_path + path + ".md")
				doc = Maruku.new(test)
				(@document/"#content").inner_html = doc.to_html
				(@document/"#content blockquote.docstatus").remove unless @with_status
				if @build_items.nil?
					File.open(@build_path + path + ".html", 'w') { |fh| fh.write @document.inner_html}
					puts "Generated: #{@build_path + path}.html"
				else
					if @build_items.include?(name.gsub(/[0-9\s]*/, ""))
						File.open(@build_path + path + ".html", 'w') { |fh| fh.write @document.inner_html}
						puts "Generated: #{@build_path + path}.html"
					end
				end
			rescue
			end
			(@document/"title").inner_html = doctitle
		end
		
		def parse_docs
			@manifest.each_pair do |header, files|
				if @build_items.nil?
					FileUtils.remove_dir(@build_path + header.gsub(/[0-9\s]*/, "")) unless not File.exists?(@build_path + header.gsub(/[0-9\s]*/, ""))
					FileUtils.mkdir(@build_path + header.gsub(/[0-9\s]*/, ""))
				end
				files.each_pair do |name, title|
					parse_doc(header, name, title)
					if title.respond_to?(:each_pair)
						title.each_pair do |sub, item|
							parse_doc(header, sub, item)
						end
					end
				end
			end
		end
		
		def set_options(arg, value)
			if arg == "noassets"
				puts "Option: No Assets"
				@no_assets = true
			elsif arg == "path" && value != ""
				puts "Option: Build Path = #{value}"
				@build_path = value
			elsif arg == "source" && value != ""
				puts "Option: Build Path = #{value}"
				@source_path = value
			elsif arg == "withstatus"
				puts "Option: With Document Status"
				@with_status = true
			elsif arg == "buildnav"
				puts "Option: Build Navigation Bar"
				@build_nav = true
			elsif arg == "files" && value != ""
				puts "Option: Files = #{value}"
				@build_items = value.split(" ")
			else
			end
		end
		
		def self.build(args)
			puts "Titanium Documentation Builder"
			docbuild = TitaniumDocs::Build.new
			args.each do |arg|
				test = arg.scan(/--([a-zA-Z]*)[=]?([a-zA-Z0-9\s\\\/.:"~]*)/)
				docbuild.set_options(test[0][0], test[0][1])
			end
			docbuild.prepare_template
			docbuild.parse_nav
			# docbuild.parse_docs
			# 			docbuild.move_assets
			
			puts "Done!"
		end
		
	end
end

if __FILE__ == $0
	TitaniumDocs::Build.build(ARGV)
end