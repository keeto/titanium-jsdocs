Contributers' Guide
===================

Thanks for your interest in contributing to the Titanium JS-API Documentation project. In order to ensure quality and consistency in the documentation, please follow the guidelines written here.

Project Structure
-----------------

The project's directory structure is divided into three main parts:

1. The **Source** directory contains all the source files for the documentation written in Markdown format. There are several subdirectories here, and each one corresponds to the header used for the navigation. The manifest file (manifest.json), is also included here and it is used for the build script to declare the structure of the documents.
1. The **Assets** directory contains all files needed to generate the HTML version of the documentation. It contains subdirectories for stylesheets (Assets/css), images (Assets/images), javascript files (Assets/scripts) and the main template files (Assets/templates).
2. The **Build** directory contains only one file, a .gitignore file. This directory is included because it is the target directory for building the HTML documentation files. Git will ignore all files contained in this directory, except for the .gitignore file. Please do not touch this directory and keep it as it is, as we don't want to clobber up the repo with files here.

The root of the project contains the Build script (build.rb) that generates the HTML documentation.



Markdown
--------

Bulk of the documentation is written in an extended form of Markdown. This extended version features the same syntax as the original Perl implementation of Markdown, as well as new extensions not available to the original implementation. A comprehensive documentation on the syntax can be found on the PHP Markdown site. Please note that we do not use PHP Markdown for parsing the files. Instead, we use Maruku, a ruby gem that also implements the extended PHP Markdown syntax.



The Source Files
----------------

All documentation files are contained inside the **Source** directory.

### Directory Structure

- **Overview** contains all documentation that are not actually part of the JS-API but are essential to understanding the whole of the documentation.
- **Core** contains all documentation about the core features of Titanium: the platform itself and the application itself.
- **Data** contains all documentation about working with data, such as working with files and databases.
- **Media** contains all documentation about working with media, like sounds and videos.
- **Network** contains all documentation about working with networks, such as network connections and sockets.
- **System** contains all documentation about working with the system, like system processes and notification.
- **UI** contains all documentation about working with the user interface, like native windows and menus.

### Filename Conventions

For consistency, follow these guidelines when naming files:

#### General conventions

- Each source file must begin with a capital letter and should always have the extension ".md"
- For filenames containing multiple words, use camel case. (e.g. TrayItem).
- Files under the **Overview** directory should only contain one word that sums up it's contents.

### API Files

- Files that deal with objects that have a particular namespace should use the namespace of that file. For instance, the Titanium Database API is under the namespace Titanium.Database, so it should be named "Titanium.Database.md".
- Files that deal with objects that don't have a particular namespace or objects which are outputs from the main Titanium objects should be named after the object itself. Example, the Sound object, which is returned by the main Titanium object Titanium.Media using the createSound function, is named "Sound.md"

### Miscellaneous Files

- For files under the root directory that relate to the project itself, use all uppercase letters. Examples: TODO.md, README.md.



Writing Documentation
---------------------

### How to Get Information

When writing documentation, our first reference are the source files for Titanium. The source files could be downloaded from the Github repo.

It's easy to understand the contents of the source files. For the JS-API, you'll need to look under `<TiSrcDir>/modules`. These are the Kroll modules for Titanium, and they are the core functions we need to document. Each subdirectory here is prefixed by "Ti" and they correspond to the namespace for each object (e.g. Ti.App == Titanium.App).

If an item in the source code is hard to understand, don't be afraid to ask the core devs. They'll be more than happy to help clear out any questions you might have.

### Document Structure

Each markdown file should be structured in a consistent way, with special emphasis readability. Also, take note of the spacing in between the different areas in files--they are placed there deliberately.

For examples, please see the finished files inside the Source directory.

### Tips for Writing Content

- Double check your information. Always check if you're writing the correct argument, method name, return types and such. Errors in grammar and spelling are permissible; technical errors can be unforgivable.
- When writing about complex concepts, write clearly and consistently. Be sure to explain the ideas behind things carefully. Not everyone is an expert and if it takes more than one sentence to explain a concept, write more than one sentence. It'll be easier to answer questions before they are asked.
- Write for an international audience. Avoid using colloquial expressions and localizations. Always expect that someone who is not a fluent english speaker would be reading what you write.
- Turn on Spell Check and remember your grammar lessons!
- Stay terse. Review anything you write once or twice and remove anything unnecessary.

### Tips for Writing Examples

- Religiously follow the Javascript Code Conventions described by Douglas Crockford. We may have different approaches in writing our own code, but for examples, we have to stay consistent. You can read about Crockford's style guide here: http://javascript.crockford.com/code.html.
- Focus on the function being described. Be sure to write an example in such a way that would display the main use of the function, not edge cases. Do not write examples that involve weird and useless scenarios.
- If a function or method has multiple uses which cannot be displayed in a single example, write multiple examples.
- Test your code! Do not be sloppy when it comes to writing examples.
- Make every example self contained: each custom variable and each custom function you use should be declared within the example. A reader should be able to copy and paste the code and be able to run it without errors with little or no changes to the code itself.



Basic Style Guide
-----------------

- **API**. Always use in uppercase.
- **Appcelerator**. Should always be capitalized.
- **Documentation**. Capitalize when talking about the Titanium JS-API Documentation, but use in lowercase if talking about documentation as a concept.
- **Javascript**. Capitalize when talking about the language, but use in lowercase when used in code. Do not use "JavaScript." Also, use "JS" as an abbreviation and not "Js."
- **Javascript Objects**. Native Javascript objects should be used in lowercase ("array" not "Array," "string" not "String."). Objects native to Titanium should be capitalized when referring to the object type: "The *File* object is used to work with a *file*." or "The *Database* object connects to a local *database*."
- **Titanium**. Should always be capitalized. When talking about Titanium as a product, use "Appcelerator Titanium." When talking about Titanium as a platform, use "Titanium."



Questions, Comments, Suggestions
--------------------------------

For any questions regarding the documentation, feel free to contact Mark "Keeto" Obcena, the project head for the JS-API Docs, by sending a message here on github (username: keeto), on twitter (@keeto), via IRC (username: markeeto) or even by email (markeeto@gmail.com).

Feel free to drop by the official Titanium IRC Channel for any questions, suggestions or comments: #titanium_app (irc.freenode.net).