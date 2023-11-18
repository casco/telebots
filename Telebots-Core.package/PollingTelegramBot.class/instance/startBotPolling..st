start-stop
startBotPolling: seconds

	| processBlock |
	self updateMe.	
	processBlock := [ 
	                self
		                getUpdates: true
		                do: [ :anUpdate | anUpdate getHandledBy: self ].
	                (Delay forDuration: (Duration seconds: seconds)) wait ].
	self processFork: [ processBlock repeat ] fork.
	^ self