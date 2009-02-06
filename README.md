Titanium Javascript API Reference
=================================

JS API Documentation for Titanium. You can see a sample build at http://titanium-js.appspot.com


Building the Docs
-----------------

You can get a local copy of the documentation by running the builder script (build.rb) included. This is a command line ruby script that should be run on the directory where the docs are stored:

	build.rb [options]
	
	options:
	--path			The path to build the documentation (default: <DOCSDIR>/Build/).
	--withstatus	Includes the doc status blockquotes.
	--files="FILES"	The files to generate separated by spaces 
					(Ex. --files="Titanium.Process Sound File").
					
	On Windows:
	ruby build.rb [options]
	
	On *nix
	./build.rb [options]
					
You'll need to have ruby and rubygems installed on your system to run the builder script, as well as the following gems: hpricot, maruku, and json.


Contributing
------------

> Fork, Improve, Push!

The Titanium Javascript API Reference is a community project and everyone is invited to contribute and improve the docs. To help, just fork this project, do your changes and commit it back to your fork. Be sure to send us a pull request so we'll know about your changes and integrate them back into the main repo.

To ensure quality and consistency, there are a few guidelines you'll need to follow. We have a basic Contributers' Guide that details the formatting and style conventions for the documents, as well as a few other guidelines needed to make the process smoother. The Contributers' Guide is included in the repo (CONTRIBGUIDE.md) and is also posted on the Github wiki pages of project.


License and Copyright
---------------------

Copyrighted 2009 Appcelerator, Inc. All Rights Reserved. Appcelerator, Titanium, CodeStrong and the marks are trademarks of Appcelerator, Inc. 

This documentation for the Titanium Javascript API is released under the Creative Commons Attribution License, Version 3.

