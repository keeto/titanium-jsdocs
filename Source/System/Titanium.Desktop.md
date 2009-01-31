Titanium.Desktop {#Titanium.Desktop}
===========================

> **Document Status: Rough**  
> - Additional information is needed for some content.  
> - Needs style clean-up
{.docstatus .rough}

Titanium.Desktop provides functions for opening file dialogs, applications and urls as well as functions for creating shortcuts and getting some information about the system.

### Namespace:

	Titanium.Desktop

### Methods:

[createShortcut][] ( *from*, *to* ) : *boolean*
: Creates a shortcut (alias) to a file.

[getSystemIdleTime][] ( ) : *number*
: Returns the system idle time.

[openApplication][] ( *app* ) : *boolean*
: Opens an application on the user's system

[openFiles][] ( *object* ) : *array*
: Opens a file selection dialogue

[openURL][] ( *url* ) : *boolean*
: Opens a URL on the default web browser.




Method: createShortcut {#Titanium.Desktop:createShortcut}
---------------------------------------------------------

Creates a shortcut (alias) to a file.

### Syntax:

	Titanium.Desktop.createShortcut(from, to)
	
### Arguments:

1. from - (*string*) The path from which to create a shortcut.
2. to - (*string*) The path where the shortcut will be created.

### Returns:

- (*boolean*) True if the shortcut was successfully created.

### Example:

	var oldFile = "~/Documents/myFile.txt";
	var newFile = "~/Desktop/myNewFile.txt"
	var myShortcut = Titanium.Desktop.createShortcut(oldFile, newFile);
	
	if (myShortcut) {
		alert("Shortcut created!")
	}
	


Method: getSystemIdleTime {#Titanium.Desktop:getSystemIdleTime}
---------------------------------------------------------------

Returns the system idle time in seconds

### Syntax:

	Titanium.Desktop.getSystemIdleTime();

###	Arguments:

None

### Returns

- (*number*) The system idle time in seconds.

### Example:

	alert( "System Idle Time is " + Titanium.Desktop.getSystemIdleTime() );



Method: openApplication {#Titanium.Desktop:openApplication}
-----------------------------------------------------------

Opens an application on the user's system.

### Syntax:

	Titanium.Desktop.openApplication(app);
	
### Arguments:

1. app - (*string*) The name of the application to open.

### Returns:

- (*boolean*) true if the application was successfully opened.

### Example:

	var textEditor = Titanium.Desktop.openApplication("notepad");



Method: openFiles {#Titanium.Desktop:openFiles}
-----------------------------------------------

Opens a file selection dialog.

### Syntax:

	Titanium.Desktop.openFiles(options)
	
### Arguments:

1. options - (*object*, optional) An object containing options (see below.)

### Options

* files - (*boolean*: defaults to true) Whether or not files can be selected.
* filename - (*string*) A particular file allowed for selection.
* directories - (*boolean*: defaults to false) Whether or not directories can be selected.
* multiple - (*boolean*: defaults to false) Whether or not multiple selections are allowed.
* path - (*string*) The path to where the dialogue should open.
* types - (*array*) An array containing strings of file extensions allowed.

### Examples:

#### Allow multiple txt, doc and pdf documents:

	var files = Titanium.Desktop.openFiles({
		path: "~/Documents",
		multiple: true,
		types: [txt, doc, pdf]
	});

#### Open in path and allow only "config.ini" files:

	var configFile = Titanium.Desktop.openFiles({
		path: "c://Program Files/myApp",
		filename: "config.ini"
	})



Method: openURL {#Titanium.Desktop:openURL}
-------------------------------------------

Opens a URL in the default browser.

### Syntax:

	Titanium.Desktop.openURL(url);
	
### Arguments:

1. url - (*string*) The url to open in the browser.

### Returns:

- (*boolean*) True if the url was successfully opened in the browser, whether or not the URL exists.


### Example:

	var visitTitanium = Titanium.Desktop.openURL("http://titaniumapp.com");



[createShortcut]: #Titanium.Desktop:createShortcut
[getSystemIdleTime]: #Titanium.Desktop:getSystemIdleTime
[openApplication]: #Titanium.Desktop:openApplication
[openFiles]: #Titanium.Desktop:openFiles
[openURL]: #Titanium.Desktop:openURL