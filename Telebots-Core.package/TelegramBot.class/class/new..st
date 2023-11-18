instance creation
new: aTelegramToken
	| bot |
	bot := self new.
	bot token: aTelegramToken.
	bot checkBot.
	bot lastMessage: 0.
	bot lastUpdate: 0.
	^ bot