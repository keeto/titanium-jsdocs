Titanium.Filesystem {#Titanium.Filesystem}
==========================================

> **Document Status: Raw**  
> - Some of the contents of this document are based on features and functions that are not yet fully implemented.  
> - Additional information is needed for some content.  
> - Needs style clean-up
{.docstatus .raw}

Titanium.Filesystem provides functions for creating [File][] objects as well as utility functions for working with files and directories.

### Namespace

	Titanium.Filesystem

### See Also:

[File][]

### Methods:

[createTempFile][] () : *File*
: Creates a new File object referencing a temporary file.

[createTempDirectory][] () : *File*
: Creates a new File object referencing a temporary directory.

[getFile][] (*path*) : *File*
: Creates a new File object.

[getApplicationDirectory][] (): *File*
: Returns a File object referencing the directory where the Titanium app is located.

[getResourcesDirectory][] (): *File*
: Returns a File object referencing the resources directory.

[getDesktopDirectory][] (): *File*
: Returns a File object referencing the user's desktop directory.

[getDocumentsDirectory][] (): *File*
: Returns a File object referencing the documents directory.

[getUserDirectory][] (): *File*
: Returns a File object referencing the user's home directory.

[getLineEnding][] (): *string*
: Returns the system line-ending.

[getSeparator][] (): *string*
: Returns the system path separator.

[getRootDirectory][] (): *File*
: Returns a File object referencing the system root directory.



Method: createTempFile {#Titanium.Filesystem:createTempFile}
------------------------------------------------------------

Creates a new [File][] object referencing a temporary file.

### Syntax:

	Titanium.Filesystem.createTempFile()

### Arguments:

None

### Returns:

- (*File*) A File object referencing a temporary file.

### Example:



Method: createTempDirectory {#Titanium.Filesystem:createTempDirectory}
----------------------------------------------------------------------

Creates a new [File][] object referencing a temporary directory.

### Syntax:

	Titanium.Filesystem.createTempDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing a temporary directory.

### Example:



Method: getFile {#Titanium.Filesystem:getFile}
----------------------------------------------

Creates a new File object

### Syntax:

	Titanium.Filesystem.getFile(path)

### Arguments:

1. path - (*string*) The path to the file or directory to be referenced by the by File object.

### Returns:

- (*File*) A File object referencing a file or diirectory.

### Example:



Method: getApplicationDirectory {#Titanium.Filesystem:getApplicationDirectory}
------------------------------------------------------------------------------

Returns a File object referencing the directory where the Titanium app is located.

### Syntax:

	Titanium.Filesystem.getApplicationDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the directory where the Titanium app is located.

### Example:



Method: getResourcesDirectory {#Titanium.Filesystem:getResourcesDirectory}
--------------------------------------------------------------------------

Returns a File object referencing the system resources directory.

### Syntax:

	Titanium.Filesystem.getResourcesDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the system resources directory.

### Example:



Method: getDesktopDirectory {#Titanium.Filesystem:getDesktopDirectory}
----------------------------------------------------------------------

Returns a File object referencing the user's desktop directory.

### Syntax:

	Titanium.Filesystem.getDesktopDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the user's desktop directory.

### Example:



Method: getDocumentsDirectory {#Titanium.Filesystem:getDocumentsDirectory}
--------------------------------------------------------------------------

Returns a File object referencing the user's documents directory.

### Syntax:

	Titanium.Filesystem.getDocumentsDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the user's documents directory.

### Example:



Method: getUserDirectory {#Titanium.Filesystem:getUserDirectory}
----------------------------------------------------------------

Returns a File object referencing the user's home directory

### Syntax:

	Titanium.Filesystem.getUserDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the user's home directory.

### Example:



Method: getLineEnding {#Titanium.Filesystem:getLineEnding}
----------------------------------------------------------

Returns the system line-ending.

### Syntax:

	Titanium.Filesystem.getLineEnding()

### Arguments:

None

### Returns:

- (*string*) The system line-ending.

### Example:



Method: getSeparator {#Titanium.Filesystem:getSeparator}
--------------------------------------------------------

Returns the system path separator.

### Syntax:

	Titanium.Filesystem.getSeparator()

### Arguments:

None

### Returns:

- (*string*) The system path separator.

### Example:



Method: getRootDirectory {#Titanium.Filesystem:getRootDirectory}
----------------------------------------------------------------

Returns a File object referencing the system root directory.

### Syntax:

	Titanium.Filesystem.getRootDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the system root directory.

### Example:



[createTempFile]: #Titanium.Filesystem:createTempFile
[createTempDirectory]: #Titanium.Filesystem:createTempDirectory
[getFile]: #Titanium.Filesystem:getFile
[getApplicationDirectory]: #Titanium.Filesystem:getApplicationDirectory
[getResourcesDirectory]: #Titanium.Filesystem:getResourcesDirectory
[getDesktopDirectory]: #Titanium.Filesystem:getDesktopDirectory
[getDocumentsDirectory]: #Titanium.Filesystem:getDocumentsDirectory
[getUserDirectory]: #Titanium.Filesystem:getUserDirectory
[getLineEnding]: #Titanium.Filesystem:getLineEnding
[getSeparator]: #Titanium.Filesystem:getSeparator
[getRootDirectory]: #Titanium.Filesystem:getRootDirectory

[File]: /Data/File