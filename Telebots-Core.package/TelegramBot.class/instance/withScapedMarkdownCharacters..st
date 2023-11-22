utility
withScapedMarkdownCharacters: aString

	^ aString
		  copyWithRegex: '\_|\*'
		  matchesTranslatedUsing: [ :each | '\' , each ]