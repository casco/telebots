users-chats
chatWithId: anId ifAbsentBuildWith: aSpec

	^ self chats
		  detect: [ :each | each id = anId ]
		  ifNone: [ chats add: (ChatBuilder spec: aSpec bot: self) build ]