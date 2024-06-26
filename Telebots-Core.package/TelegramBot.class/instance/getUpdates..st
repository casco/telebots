action
getUpdates: onlyLast

	| updateSpecs updates builder |
	updateSpecs := (self sendGET:
		                '/getUpdates?offset=' , (lastUpdate + 1) printString) 
		               at: 'result'.

	builder := self updateBuilderClass new.
	builder bot: self.
	updates := updateSpecs collect: [ :aSpec | 
		           builder
			           spec: aSpec;
			           build;
			           result ].
	updates ifNotEmpty: [ lastUpdate := updates last updateId asNumber ].

	onlyLast ifTrue: [ updates := self filterUpdates: updates ].
	self hasElephantMemory ifTrue: [ elephantMemory addAll: updates ].
	^ updates