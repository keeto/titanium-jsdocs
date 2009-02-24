Properties {#Properties}
========================

A Properties object references a property-list file on the user's system, which are useful for storing information, like preferences and small amounts of data.

Each Titanium app has it's own global Properties object, accessible via `Titanium.App.Properties`. Other property-list files could also be loaded by calling `Titanium.App.loadProperties`:

	var myPropertyList = "/Users/john/Documents/properties";
	var properties = Titanium.App.loadProperties(myPropertyList);

### See Also:
[Titanium.App][]

### Methods:

[getBool][] (*key*) : *boolean*
: Returns a boolean property value.

[getDouble][] (*key*) : *double*
: Returns a double property value.

[getInt][] (*key*) : *integer*
: Returns an integer property value.

[getString][] (*key*) : *string*
: Returns a string property value.

[getList][] (*key*) : *array*
: Returns an array property value.

[setBool][] (*key*, *value*) : *void*
: Sets a boolean property value.

[setDouble][] (*key*, *value*) : *void*
: Sets a double property value.

[setInt][] (*key*, *value*) : *void*
: Sets an integer property value.

[setString][] (*key*, *value*) : *void*
: Sets a string property value.

[setList][] (*key*, *value*) : *void*
: Sets an array property value.

[hasProperty][] (*key*) : *boolean*
: Returns whether or not a property exists

[listProperties][] () : *array*
: Returns an array of property keys.



Method: getBool {#Properties:getBool}
-------------------------------------

Returns a boolean property value.

### Syntax:

	Titanium.App.Properties.getBool(key)

### Arguments:

1. key - (*string*) The property key.

### Returns:

- (*boolean*) The corresponding boolean value of the property key.

### Example:
	
	var properties = Titanium.App.Properties;
	var myValue = properties.getBoolean("booleanKey");
	alert(myValue);



Method: getDouble {#Properties:getDouble}
-----------------------------------------

Returns a double property value.

### Syntax:

	Titanium.App.Properties.getDouble(key)

### Arguments:

1. key - (*string*) The property key.

### Returns:

- (*double*) The corresponding double value of the property key.

### Example:

	var properties = Titanium.App.Properties;
	var myValue = properties.getDouble("doubleKey");
	alert(myValue);



Method: getInt {#Properties:getInt}
-----------------------------------

Returns an integer property value.

### Syntax:

	Titanium.App.Properties.getInt(key)

### Arguments:

1. key - (*string*) The property key.

### Returns:

- (*double*) The corresponding integer value of the property key.

### Example:
	
	var properties = Titanium.App.Properties;
	var myValue = properties.getInt("intKey");
	alert(myValue);



Method: getString {#Properties:getString}
-----------------------------------------

Returns a string property value.

### Syntax:

	Titanium.App.Properties.getString(key)

### Arguments:

1. key - (*string*) The property key.

### Returns:

- (*string*) The corresponding string value of the property key.

### Example:

	var properties = Titanium.App.Properties;
	var myValue = properties.getString("stringKey");
	alert(myValue);



Method: getList {#Properties:getList}
-----------------------------------

Returns an array property value.

### Syntax:

	Titanium.App.Properties.getList(key)

### Arguments:

1. key - (*string*) The property key.

### Returns:

- (*double*) The corresponding array value of the property key.

### Example:

	var properties = Titanium.App.Properties;
	var myValue = properties.getList("listKey");
	alert(myValue);



Method: setBool {#Properties:setBool}
-----------------------------------

Sets a boolean property value.

### Syntax:

	Titanium.App.Properties.setBoolean(key, value)

### Arguments:

1. key - (*string*) The property key.
2. value - (*boolean*) The value of the property key.

### Returns:

None

### Example:

	Titanium.App.Properties.setBool("boolKey", true);
	alert(Titanium.App.Properties.getBool("boolKey"));



Method: setDouble {#Properties:setDouble}
-----------------------------------------

Sets a double property value.

### Syntax:

	Titanium.App.Properties.setDouble(key, value)

### Arguments:

1. key - (*string*) The property key.
2. value - (*double*) The value of the property key.

### Returns:

None

### Example:

	Titanium.App.Properties.setDouble("doubleKey", 10.20);
	alert(Titanium.App.Properties.getDouble("doubleKey"));



Method: setInt {#Properties:setInt}
-----------------------------------

Sets an integer property value.

### Syntax:

	Titanium.App.Properties.setInt(key, value)

### Arguments:

1. key - (*string*) The property key.
2. value - (*integer*) The value of the property key.

### Returns:

None

### Example

	Titanium.App.Properties.setInt("intKey", 10);
	alert(Titanium.App.Properties.getInt("intKey"));



Method: setString {#Properties:setString}
-----------------------------------

Sets a boolean property value.

### Syntax:

	Titanium.App.Properties.setString(key, value)

### Arguments:

1. key - (*string*) The property key.
2. value - (*string*) The value of the property key.

### Returns:

None

### Example

	Titanium.App.Properties.setString("stringKey", "Hello World!");
	alert(Titanium.App.Properties.getString("stringKey"));



Method: setList {#Properties:setList}
-------------------------------------

Sets an array property value.

### Syntax:

	Titanium.App.Properties.setList(key, value)

### Arguments:

1. key - (*string*) The property key.
2. value - (*array*) The value of the property key.

### Returns:

None

### Example

	Titanium.App.Properties.setList("listKey", ["a", "b", "c"]);
	alert(Titanium.App.Properties.getList("listKey"));



Method: hasProperty {#Properties:hasProperty}
---------------------------------------------

Returns whether or not a property exists.

### Syntax:

	Titanium.App.Properties.hasProperty(key)

### Arguments:

1. key - (*string*) The property key.

### Returns:

- (*boolean*) True if the property exists.

### Example

	alert(Titanium.App.Properties.hasProperty("doubleKey"));



Method: listProperties {#Properties:listProperties}
---------------------------------------------------

Returns an array of property keys.

### Syntax:

	Titanium.App.Properties.listProperties()

### Arguments:

None

### Returns:

- (*array*) An array of property keys.

### Example

	var properties = Titanium.App.Properties.listProperties();
	for (var i, l = properties.length; i < 0; i++) {
		alert(properties[i]);
	}



[getBool]: #Properties:getBool
[getDouble]: #Properties:getDouble
[getInt]: #Properties:getInt
[getString]: #Properties:getString
[getList]: #Properties:getList
[setBool]: #Properties:setBool
[setDouble]: #Properties:setDouble
[setInt]: #Properties:setInt
[setString]: #Properties:setString
[setList]: #Properties:setList
[hasProperty]: #Properties:hasProperty
[listProperties]: #Properties:listProperties

[Titanium.App]: /Core/Titanium.App