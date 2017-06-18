This class is now obsolete, use MultiByteFileStream instead.

I am the same as a regular file stream, except that when I am in text mode, I will automatically convert line endings between the underlying platform's convention, and Squeak's convention of carriage-return only.  The goal is that Squeak text files can be treated as OS text files, and vice versa.

In binary mode, I behave identically to a StandardFileStream.

To enable CrLfFileStream as the default file stream class for an entire image, modify FileStream class concreteStream .


There are two caveats on programming with CrLfFileStream.

First, the choice of text mode versus binary mode affects which characters are visible in Squeak, and no longer just affects whether those characters are returned as Character's or as Integer's.  Thus the choice of mode needs to be made very carefully, and must be based on intent instead of convenience of representation.  The methods asString, asByteArray, asCharacter, and asInteger can be used to convert between character and integer representations.  (Arguably, file streams should accept either strings or characters in nextPut: and nextPutAll:, but that is not the case right now.)

Second, arithmetic on positions no longer works, because one character that Squeak sees (carriage return) could map to two characters in the underlying file (carriage return plus line feed, on MS Windows and MS DOS).  Comparison between positions still works.  (This caveat could perhaps be fixed by maintaining a map between Squeak positions and positions in the underlying file, but it is complicated.  Consider, for example, updates to the middle of the file.  Also, consider that text files are rarely updated in the middle of the file, and that general random access to a text file is rarely very useful.  If general random access with specific file counts is desired, then the file is starting to sound like a binary file instead of a text file.)

