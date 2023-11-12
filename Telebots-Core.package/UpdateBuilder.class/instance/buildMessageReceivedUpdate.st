building
buildMessageReceivedUpdate

   	| update msgSpec msg user chat |
	update := MessageReceivedUpdate  new.
	update updateId: (spec at: 'update_id').
	msgSpec := (spec at: 'message').
	user := bot userWithId: (msgSpec at: 'from' at: 'id') ifAbsentBuildWith: (msgSpec at: 'from').
	chat := bot chatWithId: (msgSpec at: 'chat' at: 'id') ifAbsentBuildWith: (msgSpec at: 'chat').
	msg := TelegramMessage new.
	msg from: user.
	msg chat: chat.
	msg text: (msgSpec at: 'text' ifAbsent: [ '' ]).
	msg photos:
		(TelegramPhoto fromAll: (msgSpec at: 'photo' ifAbsent: [ Array new ])).
	msg voice: (msgSpec
			 at: 'voice'
			 ifPresent: [ :it | TelegramVoice from: it ]
			 ifAbsent: [ nil ]).
	msg date: (msgSpec at: 'date').
	msg id: (msgSpec at: 'message_id').
	msg bot: bot.
	update message: msg.
	^ update