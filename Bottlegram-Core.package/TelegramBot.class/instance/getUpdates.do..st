action
getUpdates: onlyLast do: aBlock

	| aMessagesColection |
	aMessagesColection := self getUpdates: onlyLast.
	aMessagesColection do: aBlock