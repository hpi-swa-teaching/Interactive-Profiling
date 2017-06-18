read, write, position
verbatim: aString
	"Put out the string without HTML conversion. 1/1/99 acg"

	super nextPutAll: aString

	"'super verbatim:' in the 2.3beta draft didn't perform as expected -- the code was printed with conversion.  In a sense, that wouldn't make sense either -- we don't want strictly verbatim printing, just printing without the HTML conversion (that is, skipping around just the nextPut: and nextPutAll: for just this Class).  If there were intermediate conversions (say, CRLF!), we would want those to happen as advertised -- perhaps we should use a differently named selector, perhaps something like nextPutWithoutHTMLConversion:, so that verbatim isn't overridden?"