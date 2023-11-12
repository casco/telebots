action
getUpdates: onlyLast

	| updateSpecs updates builder |
	updateSpecs := (self sendGET:
		                '/getUpdates?offset=' , self lastUpdate printString) 
		               at: 'result'.

	builder := self updateBuilderClass new.
	builder bot: self.
	updates := updateSpecs collect: [ :aSpec | 
		           builder
			           spec: aSpec;
			           build ].
	updates ifNotEmpty: [ self lastUpdate: updates last updateId ].

	onlyLast ifTrue: [ updates := self filterUpdates: updates ].
	^ updates