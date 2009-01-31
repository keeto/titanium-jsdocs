Media {#Media}
==============

> **Document Status: Rough**  
> - Additional information is needed for some content.  
> - Needs style clean-up
{.docstatus .rough}

Titanium.Media provides functions for playing media files and create media objects.

### Namespace:

	Titanium.Media

### See Also:
[Sound][]

### Methods:

[beep][] () : *null*
: Plays a system notification sound.

[createSound][] (*url*) : *object*
: Creates a new Sound object.



Method: beep {#Media:beep}
----------------------------

Plays a system notification sound.

### Syntax:

	Titanium.Media.beep()
	
### Arguments:

None

### Returns:

None

### Example:

	if (done) Titanium.Media.beep();



Method: createSound {#Media:createSound}
----------------------------

Creates a new [Sound][] object.

### Syntax:

	Titanium.Media.createSound(url)

### Arguments:

1. url - (*string*) The location of the sound file.

### Returns:

- (*object*) A new Sound object.

### Example:

	var mySound = Titanium.Media.createSound("C://My Music/Song.mp3");

### See Also:

[Sound][]



[beep]: #Media:beep
[createSound]: #Media:createSound

[Sound]: /Media/Sound