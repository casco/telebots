action
sendBotIsTypingTo: aChat

	| dict |
	dict := Dictionary new.
	dict
		at: 'chat_id' put: aChat id printString;
		at: 'action' put: 'typing'.
	self sendPOST: '/sendChatAction' data: dict