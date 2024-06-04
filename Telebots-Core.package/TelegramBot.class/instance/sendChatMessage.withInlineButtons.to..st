as yet unclassified
sendChatMessage: aMessageText withInlineButtons: inlineKeyboardButtons to: aChat

	| dict inlineKeyboard |
	dict := Dictionary new.
	inlineKeyboard := TelegramInlineKeyboard new. 
	inlineKeyboard 	buttons: inlineKeyboardButtons.
	dict
		at: 'chat_id' put: aChat id printString;
		at: 'parse_mode' put: 'Markdown';
		at: 'text' put: aMessageText;
		at: 'reply_markup' put: inlineKeyboard getInlineKeyboardMarkup.
	self sendPOST: '/sendMessage' data: dict.