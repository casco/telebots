instance creation
new: aBotID
	| bot |
	bot := self new.
	bot botID: aBotID.
	bot checkBot.
	bot lastMessage: 0.
	bot lastUpdate: '0'.
	^ bot