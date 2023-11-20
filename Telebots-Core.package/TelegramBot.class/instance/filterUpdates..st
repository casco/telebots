action
filterUpdates: aColectioOfUpdates

	| filteredCollection |
	filteredCollection := aColectioOfUpdates select: [ :each | 
		                      each updateId > lastMessage ].
	filteredCollection ifNotEmpty: [ 
		lastMessage := filteredCollection last updateId ].
	^ filteredCollection