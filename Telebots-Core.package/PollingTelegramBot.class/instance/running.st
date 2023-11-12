accessing
running

	self processFork ifNotNil: [ ^ true ].
	^ false