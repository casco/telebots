as yet unclassified
buildCallbackQueryUpdate

		| user callbackSpec callbackQuery |

		result ifNotNil: [ self error: 'This should not happen' ].
		result := CallbackQueryUpdate new.
		result updateId: (spec at: 'update_id').
		callbackSpec := spec at: 'callback_query'.
		user := bot
	        userWithId: (callbackSpec at: 'from' at: 'id')
	        ifAbsentBuildWith: (callbackSpec at: 'from').
		callbackQuery := TelegramCallbackQuery new.
		callbackQuery id: (callbackSpec at: 'id').
		callbackQuery from: user.
		callbackQuery data: (callbackSpec at: 'data').
		result callbackQuery: callbackQuery.
		result rawSpec: spec.