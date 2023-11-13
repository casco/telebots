building
buildBotStatusUpdated

	| update  |
	update := BotStatusUpdate new.
	update updateId: (spec at: 'update_id').
	update rawSpec: spec.
	^ update