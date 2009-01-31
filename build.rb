#!/usr/bin/env ruby
require "rubygems"
require "maruku"
require "hpricot"
require "json/pure"
require "fileutils"

module TitaniumDocs
	class Build
		
		attr_accessor :nocss
		attr_accessor :build_path
		attr_accessor :src_path
		attr_accessor :template_path
		attr_accessor :build_items
		
		def initialize(path = File.dirname(__FILE__))
			@path = path
			# @doc = open("Assets/template.html") { |f| Hpricot(f) }
			# 			(@doc/"#content").inner_html += "Yep"
			# 			puts @doc
		end
		
		def prepare_template
			puts "Preparing template.."
			@src_path ||= @path + "/Source/"
			@build_path ||= @path + "/Build/"
			@manifest = JSON.load(open( @src_path + "manifest.json" ))
			@template_path ||= @path + "/Assets/templates/"
			
			@template_main = @template_path + "main.html"
			@template_nav = @template_path + "nav.html"
			@template_footer = @template_path + "footer.html"
			
			@document = open(@template_main) { |f| Hpricot(f) }
			@nav = open(@template_nav) { |f| Hpricot(f) }
			@footer = open(@template_footer) { |f| Hpricot(f) }
			
			(@document/"#navigation").inner_html = @nav.inner_html
			(@document/"#footer").inner_html = @footer.inner_html
		end
		
		def parse_nav
			nav_html = ""
			
			@manifest.each_pair do |header, files|
				nav_html += "<h2>#{header.gsub(/[0-9\s]*/, "")}</h2>\n"
				nav_html += "<ul>\n"
				files.each_pair do |name, title|
					nav_link = "../#{header.gsub(/[0-9\s]*/, "")}/#{name.gsub(/[0-9\s]*/, "")}"
					nav_html += "<li><a href=\"#{nav_link}\" >#{title != "" && !title.respond_to?(:each_pair) ? title : name.gsub(/[0-9\s]*/, "")}</a></li>\n"
					if title.respond_to?(:each_pair)
						nav_html += "<ul>\n"
						title.each_pair do |sub, item|
							nav_link = "../#{header.gsub(/[0-9\s]*/, "")}/#{sub.gsub(/[0-9\s]*/, "")}"
							nav_html += "<li><a href=\"#{nav_link}\" >#{item != "" ? item : sub.gsub(/[0-9\s]*/, "")}</a></li>\n"
						end
						nav_html += "</ul>\n"
					end
				end
				nav_html += "</ul>\n"
			end
			#puts nav_html
			(@document/"#navigation").inner_html += "\n#{nav_html}"
		end
		
		def parse_doc(header, name, title)
			path = "#{header.gsub(/[0-9\s]*/, "")}/#{name.gsub(/[0-9\s]*/, "")}"
			doctitle = (@document/"title").inner_html;
			(@document/"title").inner_html = "#{doctitle}: #{title != "" ? title : path}"
			begin
				test = File.read(@src_path + path + ".md")
				doc = Maruku.new(test)
				(@document/"#content").inner_html = doc.to_html
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
			if arg == "nocss"
				puts "Option: No CSS File"
				@nocss = true
			elsif arg == "path" && value != ""
				puts "Option: Build Path = #{value}"
				@build_path = value
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
			docbuild.parse_docs
		end
		
	end
end

if __FILE__ == $0
	TitaniumDocs::Build.build(ARGV)
end