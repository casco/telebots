building
buildMessageBasedUpdate

	(spec at: 'message') at: 'new_chat_member' ifPresent: [ 
		self buildMembersChangedUpdate.
		^ self ].
	(spec at: 'message') at: 'left_chat_member' ifPresent: [ 
		self buildMembersLeftUpdate.
		^ self ].

	self buildMessageReceivedUpdate.
	^ self