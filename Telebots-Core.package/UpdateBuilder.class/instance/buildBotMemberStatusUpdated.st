building
buildBotMemberStatusUpdated

	result ifNotNil: [ self error: 'This should not happen' ].
	result := BotMemberStatusUpdate new.
	result updateId: (spec at: 'update_id').
	result rawSpec: spec