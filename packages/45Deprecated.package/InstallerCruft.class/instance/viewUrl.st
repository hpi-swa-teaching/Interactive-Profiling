utils
viewUrl

	^Workspace new contents: (self urlGet contents); openLabel: self urlToDownload.
