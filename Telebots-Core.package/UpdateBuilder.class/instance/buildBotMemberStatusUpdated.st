building
buildBotMemberStatusUpdated

	| update  |
	update := BotMemberStatusUpdate new.
	update updateId: (spec at: 'update_id').
	update rawSpec: spec.
	^ update