accessing
becameMember

	^ ((rawSpec at: 'my_chat_member') at: 'new_chat_member' at: 'status')
	  = 'member'