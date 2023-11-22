building
buildMessageReceivedUpdate

	| msgSpec msg user chat |
	result ifNotNil: [ self error: 'This should not happen' ].

	result := MessageReceivedUpdate new.
	result updateId: (spec at: 'update_id').
	msgSpec := spec at: 'message'.
	user := bot
		        userWithId: (msgSpec at: 'from' at: 'id')
		        ifAbsentBuildWith: (msgSpec at: 'from').
	chat := bot
		        chatWithId: (msgSpec at: 'chat' at: 'id')
		        ifAbsentBuildWith: (msgSpec at: 'chat').
	msg := TelegramMessage new.
	msg from: user.
	msg chat: chat.
	msg text: (msgSpec at: 'text' ifAbsent: [ '' ]).
	msg caption: (msgSpec at: 'caption' ifAbsent: [ nil ]).
	msg mentions: (self getMentionsForm: msgSpec).
	msg photos:
		(TelegramPhoto fromAll:
			 (msgSpec at: 'photo' ifAbsent: [ Array new ])).
	msg document: (TelegramDocument from:
			 (msgSpec at: 'document' ifAbsent: [ Array new ])).
	msg voice: (msgSpec
			 at: 'voice'
			 ifPresent: [ :it | TelegramVoice from: it ]
			 ifAbsent: [ nil ]).
	msg date: (msgSpec at: 'date').
	msg id: (msgSpec at: 'message_id').
	msg bot: bot.
	result message: msg.
	result rawSpec: spec