accessing
kicked

	^ ((rawSpec at: 'my_chat_member') at: 'new_chat_member' at: 'status')
	  = 'kicked'