Titanium.Process {#Titanium.Process}
====================================

> **Document Status: Crude**  
> - Preliminary content has been added but not yet substantiated.  
> -
{.docstatus .crude}

Titanium.Process provides functions for working with system processes.

### Namespace:

	Titanium.Process
	
### See Also:
[Process][], [Pipe][]
	
### Properties:

pid : *string* \[*read-only*\]
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

Launches a system process and returns a [Process][] object.

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



[Process]: /System/Process
[Pipe]: /System/Pipe