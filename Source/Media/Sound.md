Sound {#Sound}
==============

> **Document Status: Rough**  
> - Additional information is needed for some content.  
> - Needs style clean-up
{.docstatus .rough}

A Sound object references an audio file that may reside in the user's system or in another location. Sound objects are created by calling the [createSound()][Media:createSound] function under the [Titanium.Media][Media] namespace:

	// Creating a new sound object..
	var mySound = Titanium.Media.createSound(url);

Take note that there is no Titanium.Sound namespace, nor is there a constructor function or a Sound class, so the following lines won't work:

	// There's no Titanium.Sound..
	var mySound1 = Titanium.Sound(url);
	
	// Do not use "new" because createSound is not a
	// constructor function..
	var mySound2 = new Titanium.Media.createSound(url);

### See Also:
[Media][]

### Methods: {#Sound:Methods}

[getVolume][] () : *number*
: Returns a sound object's volume.

[isLooping][] () : *boolean*
: Returns whether or not a sound object is on loop.

[isPaused][] () : *boolean*
: Returns whether or not a sound object is paused.

[isPlaying][] () : *boolean*
: Returns whether or not a sound object is playing.

[onComplete][] (*callback*) : *void*
: Sets a callback function to perform when the sound completes playing.

[pause][] () : *void*
: Pauses a currently playing sound object.

[play][] () : *void*
: Plays a sound object.

[reset][] () : *void*
: Resets the sound objects playhead to the beginning.

[resume][] () : *void*
: Plays a currently paused sound object.

[stop][] () : *void*
: Stops playing a sound object.

[setLooping][] (*loop*) : *void*
: Sets a sound object on loop.

[setVolume][] (*percent*) : *void*
: Sets a sound object's volume.



Method: getVolume {#Sound:getVolume}
------------------------------------

Returns a sound object's volume.

### Syntax:

	Sound.getVolume()

### Arguments:

None

### Returns:

- (*number*) The sound object's volume.

### Example:

	var mySound = Titanium.Media.createSound("C://My Music/Song.mp3");
	alert( mySound.getVolume() );

### See Also:

[Sound:setVolume][setVolume]



Method: isLooping {#Sound:isLooping}
------------------------------------

Returns whether or not a sound object is on loop.

### Syntax:

	Sound.isLooping()

### Arguments:

None

### Returns:

- (*boolean*) True if the sound object is on loop.

### Example:

	if (mySound.isLooping()) alert("Sound is on loop.");

### See Also:

[Sound:setLooping][setLooping]



Method: isPaused {#Sound:isPaused}
------------------------------------

Returns whether or not a sound object is paused.

### Syntax:

	Sound.isPaused()

### Arguments:

None

### Returns:

- (*boolean*) True if the sound object is paused.

### Example:

	if (mySound.isPaused()) alert("Sound is paused.");

### See Also:

[Sound:pause][pause]



Method: isPlaying {#Sound:isPlaying}
------------------------------------

Returns whether or not a sound object is playing.

### Syntax:

	Sound.isPlaying()

### Arguments:

None

### Returns:

- (*boolean*) True if the sound object is playing.

### Example:

	if (mySound.isPlaying()) alert("Sound is playing.");

### See Also:

[Sound:play][play]



Method: onComplete {#Sound:onComplete}
------------------------------------

Sets a callback function to perform when the sound completes playing.

### Syntax:

	Sound.onComplete(callback)

### Arguments:

1. callback - (*function*) The function to perform when the sound object completes playing.

### Returns:

None

### Example:

	var mySound = Titanium.Media.createSound("~/Desktop/Song.mp3");
	mySound.onComplete(function(){
		alert("The song has finished playing.")
	});


Method: pause {#Sound:pause}
----------------------------

Pauses a currently playing sound object. 

Calling the pause method of a sound that's currently not playing will throw an error.

### Syntax:

	Sound.pause()

### Arguments:

None

### Returns:

None

### Throws:

- An error if the sound is currently not playing.

### Example:

	var mySound = Titanium.Media.createSound("~/Desktop/Song.mp3");
	
	try {
		mySound.pause();
	} catch(e) {
		alert("Cannot pause a non-playing sound.")
	}

### See Also:

[Sound:resume][resume]



Method: play {#Sound:play}
--------------------------

Plays a sound object.

### Syntax:

	Sound.play()

### Arguments:

None

### Returns:

None

### Throws:

- An error if the sound is currently not playing.

### Example:

	var mySound = Titanium.Media.createSound("~/Desktop/Song.mp3");
	mySound.play()

### See Also:

[Sound:stop][stop]



Method: reset {#Sound:reset}
------------------------------------

Resets the sound object's playhead to the beginning.

### Syntax:

	Sound.reset()

### Arguments:

None

### Returns:

None

### Example:

	var mySound = Titanium.Media.createSound("~/Desktop/Song.mp3");
	mySound.reset();



Method: resume {#Sound:resume}
------------------------------------

Plays a currently paused sound object.

Calling the resume method of a sound that's currently playing will throw an error.

### Syntax:

	Sound.resume()

### Arguments:

None

### Returns:

None

### Throws:

- An error if the sound is currently playing.

### Example:

	var mySound = Titanium.Media.createSound("~/Desktop/Song.mp3");
	if (mySound.isPaused()) mySound.resume();



Method: stop {#Sound:stops}
------------------------------------

Stops playing a sound object.

### Syntax:

	Sound.stop()

### Arguments:

None

### Returns:

None

### Example:

	var mySound = Titanium.Media.createSound("~/Desktop/Song.mp3");
	mySound.reset();

### See Also:

[Sound:play][play]



Method: setLooping {#Sound:setLooping}
------------------------------------

Sets a sound object on loop.

### Syntax:

	Sound.setLooping(loop)

### Arguments:

1. loop - (*boolean*) True to set the sound on loop, false to remove looping.

### Returns:

None

### Example:

	var mySound = Titanium.Media.createSound("~/Desktop/Song.mp3");
	mySound.setLooping(true);

### See Also:

[Sound:isLooping][isLooping]



Method: setVolume {#Sound:setVolume}
------------------------------------

Sets a sound object's volume.

### Syntax:

	Sound.setVolume(percent);

### Arguments:

1. percent - (*number*) A number between 0 to 100.

### Returns:

None

### Example:

	var mySound = Titanium.Media.createSound("~/Desktop/Song.mp3");
	mySound.reset();

### See Also:

[Sound:play][play]



[getVolume]: #Sound:getVolume
[isLooping]: #Sound:isLooping
[isPaused]: #Sound:isPaused
[isPlaying]: #Sound:isPlaying
[onComplete]: #Sound:onComplete
[pause]: #Sound:pause
[play]: #Sound:play
[reset]: #Sound:reset
[resume]: #Sound:resume
[stop]: #Sound:stop
[setLooping]: #Sound:setLooping
[setVolume]: #Sound:setVolume

[Sound]: /Media/Sound
[Media]: /Media/Media
[Media:createSound]: /Media/Media#Media:createSound