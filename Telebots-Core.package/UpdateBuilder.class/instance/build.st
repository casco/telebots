building
build

	result := nil.
	spec at: 'message' ifPresent: [ ^ self buildMessageBasedUpdate ].
	spec at: 'my_chat_member' ifPresent: [ 
		self buildBotMemberStatusUpdated.
		^ self ].
	spec at: 'callback_query' ifPresent: [ ^ self buildCallbackQueryUpdate ].
	result := UnknownUpdate new 
		          updateId: (spec at: 'update_id');
		          rawSpec: spec