users-chats
userWithId: anId ifAbsentBuildWith: aSpec

	^ self users detect: [ :each | each id = anId ] ifNone: [ 
		  users add: ((self userBuilderClass spec: aSpec bot: self)
				   build;
				   result) ]