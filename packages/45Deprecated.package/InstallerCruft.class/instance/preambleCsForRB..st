mantis
preambleCsForRB: aBugNo
"
Installer mantis preambleCsForRB: 5936.
"
	| page text   | 

	self setBug: aBugNo.
	
	page := self maPage.
 
	text := String streamContents: [ :str |	
			
		#('Reporter'  'Summary' 'Description' 'Additional Information' ) 
				do: [ :field |
						| f |
						f := self maRead: page field: field.
			str nextPutAll: f key; nextPutAll: ': '; nextPutAll: f value; cr.
		]
	].
 	
^ text	