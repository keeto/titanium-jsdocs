Process {#Process}
==================

> **Document Status: Raw**  
> - Some of the contents of this document are based on features and functions that are not yet fully implemented.  
> - Additional information is needed for some content.  
> - Needs style clean-up
{.docstatus .raw}

A Process object

### Properties:

command : *string* \[*read-only*\]
: The system command of the process.

pid : *string* \[*read-only*\]
: The PID of the process

running : *boolean* \[*read-only*\]
: The status of the Process.

err : *Pipe* \[*read-only*\]
: A Pipe object referencing the process' errors.

out : *Pipe* \[*read-only*\]
: A Pipe object referencing the process' output.

in : *Pipe* \[*read-only*\]
: A Pipe object referencing the process' input.

### Methods:

terminate ( ) : *boolean*
: Terminates a currently running process.



Method: terminate {#Process:terminate}
--------------------------------------

Terminates a currently running process.

### Syntax:

	Process.terminate()
	
### Arguments:

None

### Returns:

- (*boolean*) True if the process was successfully terminated.

### Example: