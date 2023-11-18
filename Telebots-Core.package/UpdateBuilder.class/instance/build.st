building
build
   result := nil.
	spec at: 'message' ifPresent: [ 
		(spec at: 'message')
			at: 'new_chat_member'
			ifPresent: [ 
				self buildMembersChangedUpdate.
				^ self ]
			ifAbsent: [ 
				self buildMessageReceivedUpdate.
				^ self ] ].
	spec at: 'my_chat_member' ifPresent: [ 
		self buildBotMemberStatusUpdated.
		^ self ].
	result := UnknownUpdate new rawSpec: spec