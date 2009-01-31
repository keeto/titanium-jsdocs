Filesystem {#Filesystem}
========================

> **Document Status: Crude**  
> - Preliminary content has been added but not yet substantiated.  
> -
{.docstatus .crude}

Titanium.Filesystem provides functions for creating [File][] objects as well as utility functions for working with files and directories.

### Namespace

	Titanium.Filesystem

### See Also:

[File][]

### Methods:

createTempFile () : *File*
: Creates a new File object referencing a temporary file.

createTempDirectory () : *File*
: Creates a new File object referencing a temporary directory.

getFile (*path*) : *File*
: Creates a new File object.

getApplicationDirectory (): *File*
: Returns a File object referencing the directory where the Titanium app is located.

getResourcesDirectory (): *File*
: Returns a File object referencing the resources directory.

getResourcesDirectory (): *File*
: Returns a File object referencing the resources directory.

getDesktopDirectory (): *File*
: Returns a File object referencing the user's desktop directory.

getDocumentsDirectory (): *File*
: Returns a File object referencing the documents directory.

getUserDirectory (): *File*
: Returns a File object referencing the user's home directory.

getLineEnding (): *string*
: Returns the system line-ending.

getSeparator (): *File*
: Returns the system path separator.

getRootDirectory (): *File*
: Returns a File object referencing the system root directory.


[File]: /Data/File