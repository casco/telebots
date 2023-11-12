action
filterUpdates: aColectioOfUpdates

	| filteredCollection |
	filteredCollection := aColectioOfUpdates select: [ :each | 
		                      each updateId > self lastMessage ].
	filteredCollection ifNotEmpty: [ 
		self lastMessage: filteredCollection last updateId ].
	^ filteredCollection