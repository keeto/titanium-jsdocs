TCPSocket {#Socket}
===================

A TCPSocket object is used for socket-based connections between a Titanium application and a server. TCPSocket objects can be created by using `createTCPSocket` method of the `Titanium.Network` object:

	var host = "127.0.0.1";
	var port = 80;
	var socket = Titanium.Network.createTCPSocket(host, port);
	
Once a TCPSocket object has been created, its `connect` method should be called to start the connection between the Titanium application and the server.

### See Also:

[Titanium.Network][]

### Methods:

[connect][] () : *boolean*
: Starts a socket connection.

[close][] () : *boolean*
: Closes a connected socket.

[write][] ( *data* ) : *boolean*
: Writes data to a socket.

[isClosed][] () : *boolean*
: Returns whether a socket is closed or not.

[onRead][] ( *handler* ) : *void*
: Sets a callback function to perform when a socket receives data.

[onWrite][] ( *handler* ) : *void*
: Sets a callback function to perform when data is written on a socket.

[onTimeout][] ( *handler* ) : *void*
: Sets a callback function to perform when the socket times out.

[onReadComplete][] ( *handler* ) : *void*
: Sets a callback function to perform when data has been read.



Method: connect {#TCPSocket:connect}
------------------------------------

Starts a socket connection.

### Syntax:

	TCPSocket.connect()

### Arguments:

None

### Returns:

- (*boolean*) True if the socket successfully connected, false if otherwise.

### Example:

	var socket = Titanium.Network.createTCPSocket("localhost", 80);
	
	alert( "The Socket connected " + (socket.connect()) ? "successfully." : "unsuccessfully");



Method: close {#TCPSocket:close}
--------------------------------

Closes a socket connection.

### Syntax:

	TCPSocket.close()

### Arguments:

None

### Returns:

- (*boolean*) True if the socket successfully closed.

### Example:

	var socket = Titanium.Network.createTCPSocket("localhost", 80);
	socket.connect();
	
	var closeSocket = confirm("Do you want to close the socket connection?");
	
	if (closeSocket) socket.close;



Method: write {#TCPSocket:write}
------------------------------------

Writes data to a socket.

### Syntax:

	TCPSocket.connect(data)

### Arguments:

1. data - (*string*) The data to write.

### Returns:

- (*boolean*) True if the data was successfully written to the socket.

### Example:

	var data = "Hi Universe";
	var socket = Titanium.Network.createTCPSocket("localhost", 80);
	socket.connect();
	
	alert( "The data was written " + (socket.write(data)) ? "successfully" : "unsuccessfully" );



Method: isClosed {#TCPSocket:isClosed}
--------------------------------------

Returns the closed state of the socket.

### Syntax:

	TCPSocket.isClosed()

### Arguments:

None

### Returns:

- (*boolean*) True if the socket is closed.

### Example:

	var socket = Titanium.Network.createTCPSocket("localhost", 80);
	socket.connect();
	
	alert(socket.isClosed());



Method: onRead {#TCPSocket:onRead}
----------------------------------

Sets a callback function to perform when a socket receives data.

### Syntax:

	TCPSocket.onRead(handler)

### Arguments:

1. handler - (*function*) The function to perform when the socket receives data.

### Returns:

None

### Example:

	var socket = Titanium.Network.createTCPSocket("localhost", 80);
	socket.onRead(function(data){
		alert("Socket received the following data: " + data);
	});



Method: onWrite {#TCPSocket:onWrite}
------------------------------------

Sets a callback function to perform when data is written on a socket.

### Syntax:

	TCPSocket.onWrite(handler)

### Arguments:

1. handler - (*function*) The function to perform when data is written on a socket.

### Returns:

None

### Example:

	var socket = Titanium.Network.createTCPSocket("localhost", 80);
	socket.onWrite(function(){
		alert("Socket data is being written!");
	});



Method: onTimeout {#TCPSocket:onTimeout}
------------------------------------

Sets a callback function to perform when a socket times-out.

### Syntax:

	TCPSocket.onTimeout(handler)

### Arguments:

1. handler - (*function*) The function to perform when a socket times-out.

### Returns:

None

### Example:

	var socket = Titanium.Network.createTCPSocket("localhost", 80);
	socket.onTimeout(function(){
		alert("Socket has timed-out!");
	});



Method: onReadComplete {#TCPSocket:onReadComplete}
------------------------------------

Sets a callback function to perform when data has been read from the socket.

### Syntax:

	TCPSocket.onReadComplete(handler)

### Arguments:

1. handler - (*function*) The function to perform when data has been read from the socket.

### Returns:

None

### Example:

	var socket = Titanium.Network.createTCPSocket("localhost", 80);
	socket.onReadComplete(function(){
		alert("Socket data has been read!");
	});



[connect]: #TCPSocket:connect
[close]: #TCPSocket:close
[write]: #TCPSocket:write
[isClosed]: #TCPSocket:isClosed
[onRead]: #TCPSocket:onRead
[onWrite]: #TCPSocket:onWrite
[onTimeout]: #TCPSocket:onTimeout
[onReadComplete]: #TCPSocket:onReadComplete

[Titanium.Network]: /Network/Titanium.Network