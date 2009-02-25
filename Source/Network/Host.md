Host {#Host}
============

A Host object references a particular host, whether it be the local computer or a computer on a network. Host objects can be created using the host's IP address or name via the methods from `Titanium.Network`:

	var hostName = "localhost";
	var hostFromName = Titanium.Network.getHostByName(hostName);
	
	var hostAddress = "127.0.0.1";
	var hostFromAddress = Titanium.Network.getHostByAddress(hostAddress);

### See Also:

[Titanium.Network][]

### Methods:

[getAddresses][] () : *array*
: Returns an array of addresses of the host.

[getAliases][] () : *array*
: Returns an array of aliases of the host.

[getName][] () : *string*
: Returns the name of the host.

[isInvalid][] () : *boolean*
: Checks whether or not a host is invalid.

[toString][] () : *string*
: Returns a string representation of the host.



Method: getAddresses {#Host:getAddresses}
-----------------------------------------

Returns an array of addresses of the host.

### Syntax:

	Host.getAddresses()

### Arguments:

None

### Returns:

- (*array*) An array of addresses of the host.

### Example:

	var host = Titanium.Network.getHostByAddress('127.0.0.1');
	var address = host.getAddresses();



Method: getAliases {#Host:getAliases}
-----------------------------------------

Returns an array of aliases of the host.

### Syntax:

	Host.getAliases()

### Arguments:

None

### Returns:

- (*array*) An array of aliases of the host.

### Example:

	var host = Titanium.Network.getHostByAddress('127.0.0.1');
	var aliases = host.getAliases();



Method: getName {#Host:getName}
-----------------------------------------

Returns the name of the host.

### Syntax:

	Host.getName()

### Arguments:

None

### Returns:

- (*string*) The name of the host.

### Example:

	var host = Titanium.Network.getHostByAddress('127.0.0.1');
	var name = host.getName();
	
	alert("Host name is " + name);



Method: isInvalid {#Host:isInvalid}
-----------------------------------

Checks whether or not a host is invalid

### Syntax:

	Host.isInvalid()

### Arguments:

None

### Returns:

- (*boolean*) True if the host is invalid, false if otherwise

### Example:

	var host = Titanium.Network.getHostByAddress('127.0.0.1');
	
	if (host.isInvalid()) {
		alert("Host is invalid!");
	} else {
		alert("Host is valid!");
	}



Method: toString {#Host:toString}
---------------------------------

Returns a string representation of the host.

### Syntax:

	Host.toString()

### Arguments:

None

### Returns:

- (*string*) The string representation of the host.

### Example:

	var host = Titanium.Network.getHostByAddress('127.0.0.1');
	
	alert(host); // Automatically calls toString()



[getAddresses]: #Host:getAddresses
[getAliases]: #Host:getAliases
[getName]: #Host:getName
[isInvalid]: #Host:isInvalid
[toString]: #Host:toString

[Titanium.Network]: /Network/Titanium.Network