update handling
handleBotMemberStatusUpdate: aBotStatusUpdate

	aBotStatusUpdate left | aBotStatusUpdate kicked ifTrue: [ 
		chats := chats reject: [ :each | 
			         each title = aBotStatusUpdate chatTitle ] ].
	aBotStatusUpdate becameMember ifTrue: [ 
		"This next line ends-up creating and adding the chat - implicit behaviour - bad idea"
		self
			chatWithId: aBotStatusUpdate chatId
			ifAbsentBuildWith: aBotStatusUpdate chatSpec ]