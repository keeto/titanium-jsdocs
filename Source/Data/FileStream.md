FileStream {#FileStream}
============

> **Document Status: Raw**  
> - Some of the contents of this document are based on features and functions that are not yet fully implemented.  
> - Additional information is needed for some content.  
> - Needs style clean-up
{.docstatus .raw}

A FileStream object is used to read/write date to a file.  FileStream objects can be created by passing a path to the [getFileStream()][Filesystem:getFileStream] function under [Titanium.Filesystem][Filesystem]:

	// Creating a FileStream object..
	var filePath = "C:/My Documents/MyFile.txt";
	var fileStream = Titanium.Filesystem.getFileStream(filePath);

Take note that there is no Titanium.FileStream namespace, nor is there a constructor function or a FileStream class, so the following lines won't work:

	// There's no Titanium.FileStream..
	var myFileStream = Titanium.FileStream(path);

	// Do not use "new" because getFileStream is not a
	// constructor function..
	var myFileStream2 = new Titanium.Filesystem.getFileStream(url);

### See Also:

[Filesystem][]

### Methods:

[open][] ( *mode* \[, *binary*, *append*\] ) : *boolean*
: Opens the file stream for reading or writing

[close][] ( ) : *boolean*
: Closes the file stream.  No more reading or writing can be done on this file stream object unless another call to open() is made.

[read][] ( ) : *string*
: Reads the content of the file stream.

[readLine][] ( ) : *string*
: Reads a particular line in the file's content.

[write][] ( *data* ) : *boolean*
: Outputs data into a file.



Method: read {#FileStream:read}
-------------------------

Reads the contents of a file referenced by a FileStream Object and returns it as a string.

Calling this method on a FileStream object referencing a directory will return null.

### Syntax:

	FileStream.read()

### Arguments:

None

### Returns:

- (*string* or *null*) A string containing the contents of the file or null if the FileStream object references a directory.

### Example:



Method: readLine {#FileStream:readLine}
---------------------------------

Reads a file referenced by a FileStream object line by line.

Calling this method on a FileStream object referencing a directory will return null.

### Syntax:

	FileStream.readLine()

### Arguments:

None

### Returns:

- (*string*) The contents of the line of a file.

### Example:



Method: write {#FileStream:write}
---------------------------

Writes data to a file.

### Syntax:

	FileStream.write(data [])

### Arguments:

1. data - (*string*) The data to be written to the file.

### Returns:

- (*boolean*) True if the data was successfully written to the file.

### Example:


[open]: #FileStream:open
[close]: #FileStream:close
[read]: #FileStream:read
[readLine]: #FileStream:readLine
[write]: #FileStream:write

[Filesystem]: /Data/Titanium.Filesystem
[Filesystem:getFile]: /Data/Titanium.Filesystem#Titanium.Filesystem:getFile
[Filesystem:getUserDirectory]: /Data/Titanium.Filesystem#Titanium.Filesystem:getUserDirectory
[Filesystem:getDesktopDirectory]: /Data/Titanium.Filesystem#Titanium.Filesystem:getDesktopDirectory