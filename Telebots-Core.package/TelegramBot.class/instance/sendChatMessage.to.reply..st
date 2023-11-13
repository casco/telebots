action
sendChatMessage: aMessageText to: aChat reply: aMessage

	| dict |
	dict := Dictionary new.
	dict
		at: 'chat_id' put: aChat id printString;
		at: 'text' put: aMessageText;
		at: 'parse_mode' put: 'Markdown';
		at: 'reply_to_message_id' put: aMessage id printString.
	self sendPOST: '/sendMessage' data: dict