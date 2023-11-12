building
buildMyBotStatusUpdated

	| update  |
	update := MyBotStatusUpdate new.
	update updateId: (spec at: 'update_id').
	update rawSpec: (spec at: 'my_chat_member').
	^ update