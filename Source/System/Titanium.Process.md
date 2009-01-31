Process {#Process}
==================

> **Document Status: Placeholder**  
> - The contents of this document are yet to be written  
> -
{.docstatus .placeholder}

Titanium.Process provides functions for working with system processes.

### Namespace:

	Titanium.Process
	
### Properties:

pid \[ *string*, *read-only* \]
: The PID of the application

### Methods:

getEnv ( *key* \[, *default* \] ) : *string*
: Returns the value of an environment variable.

hasEnv ( *key* ) : *boolean*
: Checks if an environment variable is set.

launch ( *command* \[, *args* \]) : *string*
: Launches a system process and returns a Process object.

setEnv ( *key*, *value* ) : *boolean*
: Sets the value of an environment variable.



Method: getEnv {#Process:getEnv}
--------------------------------

Returns the value of an environment variable.

### Syntax:

	Titanium.Process.getEnv(key, default)
	
### Arguments:

1. key - (*string*) The name of the environment variable.
2. default - (*string*: optional, defaults to null) The value to be returned if the environment variable isn't set.

### Returns:

- (*string* or *null*) The value of the environment variable or the value of the default argument is the environment variable is not set. If the default option isn't set, returns null.

### Example:



Method: hasEnv {#Process:hasEnv}
--------------------------------

Checks if an environment variable is set.

### Syntax:

	Titanium.Process.hasEnv(key)
	
### Arguments:

1. key - (*string*) The name of the environment variable.

### Returns:

- (*boolean*) True if the environment variable is set.

### Example:



Method: launch {#Process:launch}
--------------------------------

Launches a system process and returns a [Process] object.

### Syntax:

	Titanium.Process.launch(process, args)
	
### Arguments:

1. command - (*string*) The name of the command to be launched.
2. args - (*mixed*) The arguments to be passed to the process. Single arguments could be passed as strings and multiple arguments can be passed as an array of strings

### Returns:

- (*Process*) A Process object.

### Example:



Method: setEnv {#Process:setEnv}
--------------------------------

Sets the value of an environment variable.

### Syntax:

	Titanium.Process.setEnv(key, value)
	
### Arguments:

1. key - (*string*) The name of the environment variable.
2. value - (*string*) The value to be set

### Returns:

- (*boolean*) True if the environment variable's value has been successfully set.

### Example:



Process Object {#ProcessObj}
============================

A Process object

### Properties:

command \[ *string*, *read-only* \]
: The system command of the process.

pid \[ *string*, *read-only* \]
: The PID of the process

running \[ *boolean*, *read-only* \]
: The status of the Process.

err \[ *Pipe*, *read-only* \]
: A Pipe object referencing the process' errors.

out \[ *Pipe*, *read-only* \]
: A Pipe object referencing the process' output.

in \[ *Pipe*, *read-only* \]
: A Pipe object referencing the process' input.

### Methods:

terminate ( *key* \[, *default* \] ) : *boolean*
: Ends a currently running process


Pipe Object {#ProcessObj}
============================

A Pipe object

### Properties:

closed \[ *boolean*, *read-only* \]
: Whether a pipe is closed or not.

### Methods:

close ( ) : *boolean*
: Closes a pipe

read ( ) : *boolean*
: Reads a pipe's data

write ( *data* ) : *boolean*
: Writes data to a pipe