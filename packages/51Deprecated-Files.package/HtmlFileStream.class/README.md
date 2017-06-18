The Class apes StandardFileStream, but converts the text to HTML before putting it out (primarily intended for printOut).  It can be invoked with

	((FileStream fileNamed: 'changes.html') asHtml) fileOutChanges

Use usual FileStream methods to put out text converted to
	HTML fairly approximating that text  (for best looks, use 
	method:, methodHeader:, methodBody:, for code);

verbatim: puts text out without conversion;

command: put out HTML items, such as <br>, supplying the brackets.

header: and trailer: put out an HTML wrapper (preamble and closing text)

nextPut does the actual conversion, nextPutAll: defers characters to nextPut.

The code is fairly dumb at present, doing a wooden straightforward conversion of the text without attempting to capture the style or fonts in which the original text was rendered.  Tabs are handled awkwardly, using &nbsp, so that probably only leading strings are working right.  Style sheets now permit us to do a much neater looking job if there is interest in improving the looks of things.

Example:
	Perform
		HtmlFileStream example1
	and then navigate your browser to file 'example1.html'