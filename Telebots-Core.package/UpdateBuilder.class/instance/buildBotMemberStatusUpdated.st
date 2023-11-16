building
buildBotMemberStatusUpdated

	result := BotMemberStatusUpdate new.
	result updateId: (spec at: 'update_id').
	result rawSpec: spec