action
getUpdates: onlyLast

	| updateSpecs updates builder |
	updateSpecs := (self sendGET:
		                '/getUpdates?offset='
		                , (self lastUpdate + 1) printString) at: 'result'.

	builder := self updateBuilderClass new.
	builder bot: self.
	updates := updateSpecs collect: [ :aSpec | 
		           builder
			           spec: aSpec;
			           build;
			           result ].
	updates ifNotEmpty: [ 
		self lastUpdate: updates last updateId asNumber ].

	onlyLast ifTrue: [ updates := self filterUpdates: updates ].
	^ updates