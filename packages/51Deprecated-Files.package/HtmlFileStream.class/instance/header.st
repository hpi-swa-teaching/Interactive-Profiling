read, write, position
header
	"append the HTML header.  Be sure to call trailer after you put out the data.
	4/4/96 tk"
	| cr |
	cr := String with: Character cr.
	self command: 'HTML'; verbatim: cr.
	self command: 'HEAD'; verbatim: cr.
	self command: 'TITLE'.
	self nextPutAll: '"', self name, '"'.
	self command: '/TITLE'; verbatim: cr.
	self command: '/HEAD'; verbatim: cr.
	self command: 'BODY'; verbatim: cr.
