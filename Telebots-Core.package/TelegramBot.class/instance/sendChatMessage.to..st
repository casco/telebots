action
sendChatMessage: aMessageText to: aChat

	| dict |
	dict := Dictionary new.
	dict
		at: 'chat_id' put: aChat id printString;
		at: 'parse_mode' put: 'Markdown';
		at: 'text' put: aMessageText.
	self sendPOST: '/sendMessage' data: dict