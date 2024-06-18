as yet unclassified
sendChatMessage: aMessageText withInlineKeyboard: inlineKeyboard to: aChat

	| dict  |
	dict := Dictionary new.
	dict
		at: 'chat_id' put: aChat id printString;
		at: 'parse_mode' put: 'Markdown';
		at: 'text' put: aMessageText;
		at: 'reply_markup' put: inlineKeyboard getInlineKeyboardMarkup.
	self sendPOST: '/sendMessage' data: dict.