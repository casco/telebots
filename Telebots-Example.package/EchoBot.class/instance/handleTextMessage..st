action
handleTextMessage: aMessage

	aMessage answer: aMessage text.
	(aMessage doesMention: me) ifTrue: [ 
		aMessage answer: 'Oh, you mentioned me.' ]