as yet unclassified
buttonText: aText callbackData: callbackData

	inlineKeyboardButtons add: (
			Array with: {('text' -> aText).('callback_data'->callbackData)} asDictionary).