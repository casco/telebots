as yet unclassified
getInlineKeyboardMarkup

	| replyMarkup |
	replyMarkup := Dictionary new.
	replyMarkup 	at: 'inline_keyboard' put: self buttons asArray.
	^(STON toJsonString: replyMarkup).