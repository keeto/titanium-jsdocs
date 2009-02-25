Titanium.Network {#Titanium.Network}
====================================

Titanium.Network provides functions for working with networks, as well as creating TCPSocket and IRCClient objects.

### Namespace:

	Titanium.Network

### See Also:

[Host][], [IPAddress][], [IRCClient][], [TCPSocket][]

### Properties:

[online][] : *boolean* \[*read-only*\]
: The internet connectivity state of the system.

### Methods:

[addConnectivityListener][] (*handler*) : *integer*
: Adds an event listener that will fire when the connectivity state changes.

[createIPAddress][] ( *address* ) : *IPAddress*
: Creates a new IPAddress object.

[createIRCClient][] ( ) : *IRCClient*
: Creates a new IRCClient object.

[createTCPSocket][] ( *host*, *port* ) : *TCPSocket*
: Creates a new TCPSocket object.

[getHostByName][] ( *name* ) : *Host*
: Returns a Host object referencing the host name.

[getHostByAddress][] ( *address* ) : *TCPSocket*
: Returns a Host object referencing the IP address.

[removeConnectivityListener][] (*id*) : *boolean*
: Removes a connectivity event listener from the stack.



Property: online {#Titanium.Network:online}
-------------------------------------------

The internet connectivity state of the system. This property equals to true if the system is connected to the internet and false if otherwise.



Method: addConnectivityListener {#Titanium.Network:addConnectivityListener}
---------------------------------------------------------------------------

Adds an event listener that will fire when the connectivity state changes.

### Syntax:

	Titanium.Network.addConnectivityListener(handler)
	
### Arguments:

1. handler - (*function*) The event handler function to fire.

### Returns:

- (*integer*) The id of the event listener

### Example:

	var myListener = Titanium.Network.addConnectivityListener(function(){
		alert("Connectivity State Changed!");
	});
	
	alert("myListener ID is " + myListener);



Method: createIPAddress {#Titanium.Network:createIPAddress}
-----------------------------------------------------------

Creates a new [IPAddress][] object.

### Syntax:

	Titanium.Network.createIPAddress(address)
	
### Arguments:

1. address - (*string*) The IP address

### Returns:

- (*IPAddress*) A new IPAddress object

### Example:

	var myIP = Titanium.Network.createIPAddress("127.0.0.1");



Method: createIRCClient {#Titanium.Network:createIRCClient}
-----------------------------------------------------------

Creates a new [IRCClient][] object.

### Syntax:

	Titanium.Network.createIRCClient()
	
### Arguments:

None

### Returns:

- (*IRCClient*) A new IRCClient object

### Example:

	var myIRC = Titanium.Network.createIRCClient();



Method: createTCPSocket {#Titanium.Network:createTCPSocket}
-----------------------------------------------------------

Creates a new [TCPSocket][] object.

### Syntax:

	Titanium.Network.createTCPSocket(host, port)
	
### Arguments:

1. host - (*string*) The server host.
2. port - (*number*) The port to connect to.

### Returns:

- (*TCPSocket*) A new TCPSocket object.

### Example:

	var mySocket = Titanium.Network.createTCPSocket("127.0.0.1", 8000);



Method: getHostByName {#Titanium.Network:getHostByName}
-------------------------------------------------------

Returns a [Host][] object referencing a host name

### Syntax:

	Titanium.Network.getHostByName(name)
	
### Arguments:

1. name - (*string*) The name host to connect to.

### Returns:

- (*Host*) A Host object referencing the host name.

### Example:

	var host = Titanium.Network.getHostByName("localhost");



Method: getHostByAddress {#Titanium.Network:getHostByAddress}
-------------------------------------------------------------

Returns a [Host][] object referencing an IP address.

### Syntax:

	Titanium.Network.createTCPSocket(host, port)
	
### Arguments:

1. address - (*string*) The server host.

### Returns:

- (*Host*) A Host object referencing the IP address.

### Example:

	var host = Titanium.Network.getHostByAddress("127.0.0.1")



Method: removeConnectivityListener {#Titanium.Network:removeConnectivityListener}
---------------------------------------------------------------------------------

Removes a connectivity event listener from the stack.

### Syntax:

	Titanium.Network.removeConnectivityListener(id)
	
### Arguments:

1. id - (*integer*) The id of event listener to remove.

### Returns:

- (*boolean*) True if the event listener was successfully remove, false if otherwise.

### Example:

	var myListener = Titanium.Network.addConnectivityListener(function(){
		alert("Connectivity State Changed!");
	});
	
	var listen = confirm("Do you want to stop listening for events?");
	if (listen) Titanium.Network.removeConnectivityListener(myListener);



[online]: #Titanium.Network:online
[addConnectivityListener]: #Titanium.Network:addConnectivityListener
[createIPAddress]: #Titanium.Network:createIPAddress
[createIRCClient]: #Titanium.Network:createIRCClient
[createTCPSocket]: #Titanium.Network:createTCPSocket
[getHostByName]: #Titanium.Network:getHostByName
[getHostByAddress]: #Titanium.Network:getHostByAddress
[removeConnectivityListener]: #Titanium.Network:removeConnectivityListener

[Host]: /Network/Host
[IPAddress]: /Network/IPAddress
[IRCClient]: /Network/IRCClient
[TCPSocket]: /Network/Socket