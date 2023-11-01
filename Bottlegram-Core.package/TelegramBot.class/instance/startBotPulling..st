system startup
startBotPulling: seconds

	| processBlock |
	self getUpdates: true.
	processBlock := [ 
	                self
		                getUpdates: true
		                do: [ :each | self handleMessage: each ].
	                (Delay forDuration: (Duration seconds: seconds)) wait ].
	self processFork: [ processBlock repeat ] fork.
	^ self