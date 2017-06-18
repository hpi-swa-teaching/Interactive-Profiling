examples
example1
	"This example shows how HtmlFileStream class can be used for generating HTML file."

	| htmlFileStream |
	htmlFileStream := HtmlFileStream newFrom: (FileStream fileNamed: 'example1.html').
	htmlFileStream
		header;
		command: 'H1';
		nextPutAll: 'Hello, world!';
		command: '/H1';
		trailer;
		close.