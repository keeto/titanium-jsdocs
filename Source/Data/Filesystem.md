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



Method: createTempFile {#Filesystem:createTempFile}
-------------------------

Creates a new [File][] object referencing a temporary file.

### Syntax:

	Titanium.Filesystem.createTempFile()

### Arguments:

None

### Returns:

- (*File*) A File object referencing a temporary file.

### Example:



Method: createTempDirectory {#Filesystem:createTempDirectory}
-------------------------

Creates a new [File][] object referencing a temporary directory.

### Syntax:

	Titanium.Filesystem.createTempDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing a temporary directory.

### Example:



Method: getFile {#Filesystem:getFile}
-------------------------

Creates a new File object

### Syntax:

	Titanium.Filesystem.getFile(path)

### Arguments:

1. path - (*string*) The path to the file or directory to be referenced by the by File object.

### Returns:

- (*File*) A File object referencing a file or diirectory.

### Example:



Method: getApplicationDirectory {#Filesystem:getApplicationDirectory}
-------------------------

Returns a File object referencing the directory where the Titanium app is located.

### Syntax:

	Titanium.Filesystem.getApplicationDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the directory where the Titanium app is located.

### Example:



Method: getResourcesDirectory {#Filesystem:getResourcesDirectory}
-------------------------

Returns a File object referencing the system resources directory.

### Syntax:

	Titanium.Filesystem.getResourcesDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the system resources directory.

### Example:



Method: getDesktopDirectory {#Filesystem:getDesktopDirectory}
-------------------------

Returns a File object referencing the user's desktop directory.

### Syntax:

	Titanium.Filesystem.getDesktopDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the user's desktop directory.

### Example:



Method: getDocumentsDirectory {#Filesystem:getDocumentsDirectory}
-------------------------

Returns a File object referencing the user's documents directory.

### Syntax:

	Titanium.Filesystem.getDocumentsDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the user's documents directory.

### Example:



Method: getUserDirectory {#Filesystem:getUserDirectory}
-------------------------

Returns a File object referencing the user's home directory

### Syntax:

	Titanium.Filesystem.getUserDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the user's home directory.

### Example:



Method: getLineEnding {#Filesystem:getLineEnding}
-------------------------

Returns the system line-ending.

### Syntax:

	Titanium.Filesystem.getLineEnding()

### Arguments:

None

### Returns:

- (*string*) The system line-ending.

### Example:



Method: getSeparator {#Filesystem:getSeparator}
-------------------------

Returns the system path separator.

### Syntax:

	Titanium.Filesystem.getSeparator()

### Arguments:

None

### Returns:

- (*string*) The system path separator.

### Example:



Method: getRootDirectory {#Filesystem:getRootDirectory}
-------------------------

Returns a File object referencing the system root directory.

### Syntax:

	Titanium.Filesystem.getRootDirectory()

### Arguments:

None

### Returns:

- (*File*) A File object referencing the system root directory.

### Example:



[createTempFile]: #Filesystem:createTempFile
[createTempDirectory]: #Filesystem:createTempDirectory
[getFile]: #Filesystem:getFile
[getApplicationDirectory]: #Filesystem:getApplicationDirectory
[getResourcesDirectory]: #Filesystem:getResourcesDirectory
[getDesktopDirectory]: #Filesystem:getDesktopDirectory
[getDocumentsDirectory]: #Filesystem:getDocumentsDirectory
[getUserDirectory]: #Filesystem:getUserDirectory
[getLineEnding]: #Filesystem:getLineEnding
[getSeparator]: #Filesystem:getSeparator
[getRootDirectory]: #Filesystem:getRootDirectory

[File]: /Data/File