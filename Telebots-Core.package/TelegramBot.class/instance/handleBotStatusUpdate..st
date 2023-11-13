update handling
handleBotStatusUpdate: aBotStatusUpdate

	aBotStatusUpdate left | aBotStatusUpdate kicked ifTrue: [ chats := chats reject: [ :each | each title = aBotStatusUpdate chatTitle ] ]