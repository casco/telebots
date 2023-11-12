start-stop
stopBot
	self running ifTrue:[self processFork terminate ].
	self processFork: nil.
