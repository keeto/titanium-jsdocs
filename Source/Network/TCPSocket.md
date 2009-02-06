TCPSocket {#Socket}
===================

> **Document Status: Raw**  
> - Some of the contents of this document are based on features and functions that are not yet fully implemented.  
> - Additional information is needed for some content.  
> - Needs style clean-up
{.docstatus .raw}

A TCPSocket Object

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

- (*boolean*) True if the socket successfully connected.

### Example:



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



[connect]: #TCPSocket:connect
[close]: #TCPSocket:close
[write]: #TCPSocket:write
[isClosed]: #TCPSocket:isClosed
[onRead]: #TCPSocket:onRead
[onWrite]: #TCPSocket:onWrite
[onTimeout]: #TCPSocket:onTimeout
[onReadComplete]: #TCPSocket:onReadComplete

[Titanium.Network]: /Network/Titanium.Network