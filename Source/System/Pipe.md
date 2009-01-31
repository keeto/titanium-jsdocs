Pipe {#Pipe}
============

> **Document Status: Crude**  
> - Preliminary content has been added but not yet substantiated.  
> -
{.docstatus .crude}

A Pipe object

### Properties:

closed : *boolean* \[*read-only*\]
: Whether a pipe is closed or not.

### Methods:

close ( ) : *boolean*
: Closes a pipe.

read ( ) : *string*
: Reads data from a pipe.

write ( *data* ) : *boolean*
: Writes data to a pipe.



Method: close {#Pipe:close}
---------------------------

Closes a Pipe.

### Syntax:

	Pipe.close()
	
### Arguments:

None

### Returns:

- (*boolean*) True if the process was successfully terminated.

### Example:



Method: read {#Pipe:read}
-------------------------

Reads data from a Pipe.

### Syntax:

	Pipe.read()
	
### Arguments:

None

### Returns:

- (*string*) The data from the pipe.

### Example:



Method: write {#Pipe:write}
---------------------------

Writes data to a Pipe.

### Syntax:

	Pipe.write(data)
	
### Arguments:

1. data - (*string*) The data to be written.

### Returns:

- (*boolean*) True if the data was successfully written.

### Example: