Titanium.App {#Titanium.App}
============================

Titanium.App provides useful information about the application.

### Namespace:

	Titanium.App

### See Also:
[Properties][PropObj]

### Properties:

[Properties][] : *Properties* : \[*read-only*\]
: The Application [Properties][PropObj].

### Methods:

[appURLToPath][] () : *string*
: Returns the path to the Application.

[exit][] () : *void*
: Exits the Application.

[getGUID][] () : *string*
: Returns the Application GUID

[getID][] () : *string*
: Returns the Application ID

[getName][] () : *string*
: Returns the Application Name

[getUpdateURL][] () : *string*
: Returns the Application Update URL

[getVersion][] () : *string*
: Returns the Application Version

[loadProperties][] (*path*) : *Properties*
: Loads a property list and return a [Properties][PropObj] object.



Property: Properties {#Titanium.App:Properties}
-----------------------------------------------

This is a Properties object, which you can use to store and retrieve different properties for your application.

### Syntax:

	Titanium.App.Properties
	
### Examples:

#### Storing Properties:

	Titanium.App.Properties.setString("username", "john");
	Titanium.App.Properties.setString("password", "")

### Retrieving Properties:

	var username = Titanium.App.Properties.getString("username");
	var password = Titanium.App.Properties.getString("password");
	
### See Also
[Properties][PropObj]



Method: exit {#Titanium.App:exit}
---------------------------------

Exits the Application.

### Syntax:

	Titanium.App.exit()

### Arguments:

None

### Returns:

None

### Example:

	var exit = confirm("Are you sure you want to exit?");
	if (exit) Titanium.App.exit();



Method: loadProperties {#Titanium.App:loadProperties}
-----------------------------------------------------

Loads a property file and returns a Properties object.

### Syntax:

	Titanium.App.loadProperties(path)

### Arguments:

1. path - (*string*) The path of the property file to load.

### Returns:

- (*Properties*) A Property object.

### Example:

	var myProperties = Titanium.App.loadProperties()
	alert("This App's ID is " + id);



Method: getID {#Titanium.App:getID}
-----------------------------------

Returns the Application ID

### Syntax:

	Titanium.App.getID()

### Arguments:

None

### Returns:

- (*string*) The Application ID.

### Example:

	var id = Titanium.App.getID();
	alert("This App's ID is " + id);



Method: getName {#Titanium.App:getName}
---------------------------------------

Returns the Application Name.

### Syntax:

	Titanium.App.getName()

### Arguments:

None

### Returns:

- (*string*) The Application Name.

### Example:
	
	var name = Titanium.App.getName();
	alert("You are running " + name);



Method: getVersion {#Titanium.App:getVersion}
---------------------------------------------

Returns the Application version.

### Syntax:

	Titanium.App.getID()

### Arguments:

None

### Returns:

- (*string*) The application version.

### Example:

	var version = Titanium.App.getVersion();
	alert("You are running version " + version + " of this app.");



Method: getUpdateURL {#Titanium.App:getUpdateURL}
-------------------------------------------------

Returns the Application Update URL.

### Syntax:

	Titanium.App.getURL()

### Arguments:

None

### Returns:

- (*string*) The Application Update URL.

### Example:

	var updateURL = Titanium.App.getUpdateURL();
	alert("Updates for this app are downloaded from " + updateURL);


Method: getGUID {#Titanium.App:getGUID}
-----------------------------------

Returns the Application GUID

### Syntax:

	Titanium.App.getGUID()

### Arguments:

None

### Returns:

- (*string*) The Application GUID.

### Example:

	var guid = Titanium.App.getGUID();
	alert("This App's GUID is " + guid);



Method: appURLToPath {#Titanium.App:appURLToPath}
-------------------------------------------------

Returns the path to the Application.

### Syntax:

	Titanium.App.appURLToPath()

### Arguments:

None

### Returns:

- (*string*) The path to the Application.

### Example:

	var path = Titanium.App.appURLToPath()



[Properties]: #Titanium.App:Properties
[exit]: #Titanium.App:exit
[loadProperties]: #Titanium.App:loadProperties
[getID]: #Titanium.App:appgetID
[getName]: #Titanium.App:getName
[getVersion]: #Titanium.App:getVersion
[getUpdateURL]: #Titanium.App:getUpdateURL
[getGUID]: #Titanium.App:getGUID
[appURLToPath]: #Titanium.App:appURLToPath


[PropObj]: /Core/Properties