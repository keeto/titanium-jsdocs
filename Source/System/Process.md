Process {#Process}
==================

> **Document Status: Placeholder**  
> - The contents of this document are yet to be written  
> -
{.docstatus .placeholder}

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