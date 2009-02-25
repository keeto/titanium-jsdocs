File {#File}
============

> **Document Status: Raw**  
> - Some of the contents of this document are based on features and functions that are not yet fully implemented.  
> - Additional information is needed for some content.  
> - Needs style clean-up
{.docstatus .raw}

A File object represents a file or a directory. Because File Objects only point to or reference paths to a file or directory, they could point to files and directories whether or not they exist on the user's system. File objects can be created by passing a path to the [getFile()][Filesystem:getFile] function under [Titanium.Filesystem][Filesystem]:

	// Creating a File object..
	var filePath = "C:/My Documents/MyFile.txt";
	var file = Titanium.Filesystem.getFile(filePath);
	
	// A File object pointing to a directory..
	var dirPath = "C:/Program Files/Titanium/backup";
	var dir = Titanium.Filesystem.getFile(dirPath);

Other [Titanium.Filesystem][Filesystem] methods, such as [getUserDirectory()][Filesystem:getUserDirectory] and [getDesktopDirectory()][Filesystem:getDesktopDirectory], also return File objects. You can also create File objects pointing to temporary files which are useful for storing information that shouldn't be kept on the user's system:

	// Temporary File objects..
	var tempFile = Titanium.Filesystem.createTempFile();
	var tempDir = Titanium.Filesystem.createTempDir();

Take note that there is no Titanium.File namespace, nor is there a constructor function or a File class, so the following lines won't work:

	// There's no Titanium.File..
	var myFile = Titanium.File(path);

	// Do not use "new" because getFile is not a
	// constructor function..
	var myFile2 = new Titanium.Filesystem.getFile(url);

### See Also:

[Filesystem][]

### Methods:

[copy][] ( *to* ) : *boolean*
: Copies a file to another location.

[createTimestamp][] ( ) : *number*
: Returns a timestamp of the file's creation.

[createDirectory][] ( *recursive* ) : *boolean*
: Creates a directory.

[deleteDirectory][] ( *recursive* ) : *boolean*
: Deletes an existing directory.

[deleteFile][] ( ) : *boolean*
: Deletes a file.

[exists][] ( ) : *boolean*
: Checks whether or not a file exists on the user's system.

[extension][] ( ) : *string*
: Returns the file's extension.

[getDirectoryListing][] ( ) : *array*
: Returns an array of files inside a directory.

[isDirectory][] ( ) : *boolean*
: Checks whether the file object is a directory.

[isFile][] ( ) : *boolean*
: Checks whether the file object is a file.

[isHidden][] ( ) : *boolean*
: Checks whether the file object is hidden.

[isSymbolicLink][] ( ) : *boolean*
: Checks whether the file object is a symbolic link.

[modificationTimestamp][] ( ) : *string*
: Returns a timestamp of the file's last modification.

[move][] ( *to* ) : *boolean*
: Moves a file to another location.

[name][] ( ) : *string*
: Returns the name of the file.

[nativePath][] ( ) : *string*
: Returns the full path of the file.

[parent][] ( ) : *File*
: Returns the parent directory where the file resides.

[resolve][] ( *path* ) : *boolean*
: Changes the file or directory referenced by a File object.

[size][] ( ) : *number*
: Returns the size of the file.

[spaceAvailable][] ( ) : *number*
: Returns to space available on a user's system.

[toString][] ( ) : *string*
: Returns the file's properties as a string.


Method: copy {#File:copy}
-------------------------

Copies a file to another location.

### Syntax:

	File.copy(to)

### Arguments:

1. to - (*string*) The destination path.

### Returns:

- (*boolean*) True if the file was successfully copied to the destination.

### Example:



Method: createTimestamp {#File:createTimestamp}
-----------------------------------------------

Returns the file's creation timestamp.

### Syntax:

	File.createTimestamp()

### Arguments:

None

### Returns:

- (*number*) The creation timestamp of the file.

### Example:



Method: createDirectory {#File:createDirectory}
-----------------------------------------------

Creates a directory.

### Syntax:

	File.createDirectory(recursive)

### Arguments:

1. recursive - (*boolean*: defaults to false) Setting this to true will create parent directories if they do not exists.

### Returns:

- (*boolean*) True if the directory was successfully created.

### Example:



Method: deleteDirectory {#File:deleteDirectory}
-----------------------------------------------

Deletes an existing directory.

### Syntax:

	File.deleteDirectory(recursive)

### Arguments:

1. recursive - (*string*) Setting this to true will delete all contents of the directory together with the directory itself.

### Returns:

- (*boolean*) True if the directory was successfully deleted.

### Example:



Method: deleteFile {#File:deleteFile}
-------------------------------------

Deletes a file.

### Syntax:

	File.deleteFile()

### Arguments:

None

### Returns:

- (*boolean*) True if the file was successfully deleted.

### Example:



Method: exists {#File:exists}
-----------------------------

Returns whether or not the File object points to a file that exists on the user's system.

### Syntax:

	File.exists()

### Arguments:

None

### Returns:

- (*boolean*) True if the File object points to a file that exists on the user's system.

### Example:



Method: extension {#File:extension}
-----------------------------------

Returns the extension of the File object's referenced file.

Calling this method on a File object referencing a directory will return null.

### Syntax:

	File.extension()

### Arguments:

None

### Returns:

- (*string* or *null*) The extension of the File object's referenced file or null if the File object references a directory.

### Example:



Method: getDirectoryListing {#File:getDirectoryListing}
-------------------------------------------------------

Returns an array of File objects referencing the files and directories inside the directory referenced by the File object.

Calling this method on a File object referencing a file or a directory that doesn't exist on the user's system will return null.

### Syntax:

	File.copy(to)

### Arguments:

1. to - (*string*) The destination path.

### Returns:

- (*array* or *null*) An array of File objects referencing the files and directories inside the File object's referenced directory or null if the File object references a file or a directory that doesn't exists.

### Example:



Method: isDirectory {#File:isDirectory}
---------------------------------------

Checks whether a File object references a directory.

### Syntax:

	File.isDirectory()

### Arguments:

None

### Returns:

- (*boolean*) True if the File object references a directory.

### Example:



Method: isFile {#File:isFile}
-----------------------------

Checks whether a File object references a file.

### Syntax:

	File.isFile()

### Arguments:

None

### Returns:

- (*boolean*) True if the File object references a file.

### Example:



Method: isHidden {#File:isDirectory}
------------------------------------

Checks whether a File object references a hidden file or directory.

### Syntax:

	File.isHidden()

### Arguments:

None

### Returns:

- (*boolean*) True if the File object references a hidden file or directory.

### Example:



Method: isSymbolicLink {#File:isSymbolicLink}
---------------------------------------------

Checks whether a File object references a symbolic link.

### Syntax:

	File.isSymbolicLink()

### Arguments:

None

### Returns:

- (*boolean*) True if the File object references a symbolic link.

### Example:



Method: modificationTimestamp {#File:modificationTimestamp}
-----------------------------------------------------------

Returns the file's modification timestamp.

### Syntax:

	File.modificationTimestamp()

### Arguments:

None

### Returns:

- (*number*) The file's modification timestamp.

### Example:



Method: move {#File:move}
-------------------------

Moves a file to another location.

### Syntax:

	File.move(to)

### Arguments:

1. to - (*string*) The destination path.

### Returns:

- (*boolean*) True if the file was successfully moved to the destination.

### Example:  
  
  
  
Method: name {#File:name}
-------------------------

Returns the name of the file or directory referenced by a File object

### Syntax:

	File.name()

### Arguments:

None

### Returns:

- (*string*) The name of the file or directory referenced by the File object.

### Example:



Method: nativePath {#File:nativePath}
-------------------------------------

Returns the full, absolute path of the file or directory referenced by a File object.

### Syntax:

	File.nativePath()

### Arguments:

None

### Returns:

- (*string*) The full, absolute path of the file or directory referenced by the File object.

### Example:



Method: parent {#File:parent}
-----------------------------

Returns a File object referencing the File object's parent directory.

Calling this method on a File object that references the root-most directory of a user's system returns a new copy of the File object.

### Syntax:

	File.parent()

### Arguments:

None

### Returns:

- (*object*) A File object referencing the File object's parent directory.

### Example:



Method: resolve {#File:resolve}
-------------------------------

Changes the file or directory referenced by a File object.

### Syntax:

	File.resolve(path)

### Arguments:

1. path - (*string*) The path to the file or directory to be referenced.

### Returns:

- (*boolean*) True if the File object's reference has been changed.

### Example:



Method: size {#File:size}
-------------------------

Returns the size of the file or directory referenced by a File object.

### Syntax:

	File.size()

### Arguments:

None

### Returns:

- (*number*) The size of the file or directory referenced by the File object.

### Example:



Method: spaceAvailable {#File:spaceAvailable}
---------------------------------------------

Returns the space available on the directory referenced by a File object.

Calling this method on File objects referencing a file will return null.

### Syntax:

	File.spaceAvailable()

### Arguments:

None

### Returns:

- (*number* or *null*) The space available on the directory referenced by the File object or null if the File object references a file.

### Example:



Method: toString {#File:toString}
---------------------------------

Returns a string representation of the file or directory referenced by a File object.

### Syntax:

	File.toString()

### Arguments:

None

### Returns:

- (*string*) The string representation of the file or directory referenced by the File object.

### Example:



[copy]: #File:copy
[createTimestamp]: #File:createTimestamp
[createDirectory]: #File:createDirectory
[deleteDirectory]: #File:deleteDirectory
[deleteFile]: #File:deleteFile
[exists]: #File:exists
[extension]: #File:extension
[getDirectoryListing]: #File:getDirectoryListing
[isDirectory]: #File:isDirectory
[isFile]: #File:isFile
[isHidden]: #File:isHidden
[isSymbolicLink]: #File:isSymbolicLink
[modificationTimestamp]: #File:modificationTimestamp
[move]: #File:move
[name]: #File:name
[nativePath]: #File:nativePath
[parent]: #File:parent
[resolve]: #File:resolve
[size]: #File:size
[spaceAvailable]: #File:spaceAvailable
[toString]: #File:toString

[Filesystem]: /Data/Titanium.Filesystem
[Filesystem:getFile]: /Data/Titanium.Filesystem#Titanium.Filesystem:getFile
[Filesystem:getUserDirectory]: /Data/Titanium.Filesystem#Titanium.Filesystem:getUserDirectory
[Filesystem:getDesktopDirectory]: /Data/Titanium.Filesystem#Titanium.Filesystem:getDesktopDirectory