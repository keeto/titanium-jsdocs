Titanium.Network {#Titanium.Network}
====================================

> **Document Status: Raw**  
> - Some of the contents of this document are based on features and functions that are not yet fully implemented.  
> - Additional information is needed for some content.  
> - Needs style clean-up
{.docstatus .raw}

Titanium.Network provides functions for working with networks, as well as creating TCPSockets.

### Namespace:

	Titanium.Network

### See Also:

[Host][], [IPAddress][], [TCPSocket][]

### Properties:

online : *boolean* \[*read-only*\]
: The internet connectivity state of the system.

### Methods:

[createTCPSocket][] ( *host*, *port* ) : *TCPSocket*
: Creates a new TCPSocket object.

[createIPAddress][] ( *address* ) : *IPAddress*
: Creates a new IPAddress object.

[getHostByName][] ( *name* ) : *Host*
: Returns a Host object referencing the host name.

[getHostByAddress][] ( *address* ) : *TCPSocket*
: Returns a Host object referencing the IP address.



Method: createTCPSocket {#Titanium.Network:createTCPSocket}
-------------------------

Creates a new TCPSocket object.

### Syntax:

	Titanium.Network.createTCPSocket(host, port)
	
### Arguments:

1. host - (*string*) The server host.
2. port - (*number*) The port to connect to.

### Returns:

- (*TCPSocket*) A new TCPSocket object.

### Example:



Method: createIPAddress {#Titanium.Network:createIPAddress}
-------------------------

Creates a new IPAddress object.

### Syntax:

	Titanium.Network.createIPAddress(address)
	
### Arguments:

1. address - (*string*) The IP address

### Returns:

- (*IPAddress*) A new IPAddress object

### Example:



Method: getHostByName {#Titanium.Network:getHostByName}
-------------------------

Returns a Host object referencing a host name

### Syntax:

	Titanium.Network.getHostByName(name)
	
### Arguments:

1. name - (*string*) The name host to connect to.

### Returns:

- (*Host*) A Host object referencing the host name.

### Example:



Method: createHostByAddress {#Titanium.Network:getHostByAddress}
-------------------------

Returns a Host object referencing an address

### Syntax:

	Titanium.Network.createTCPSocket(host, port)
	
### Arguments:

1. address - (*address*) The server host.

### Returns:

- (*Host*) A Host object referencing the address

### Example:



[createTCPSocket]: #Titanium.Network:createTCPSocket
[createIPAddress]: #Titanium.Network:createIPAddress
[getHostByName]: #Titanium.Network:getHostByName
[getHostByAddress]: #Titanium.Network:getHostByAddress

[Host]: /Network/Host
[IPAddress]: /Network/IPAddress
[TCPSocket]: /Network/Socket