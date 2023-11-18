testing
doesMention: aUser

	aUser username ifNil: [ ^ false ].
	^ self mentions includes: '@', aUser username