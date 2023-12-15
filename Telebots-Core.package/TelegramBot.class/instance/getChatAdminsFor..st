users-chats
getChatAdminsFor: aChat

	| response |
	response := self sendGET:
		            '/getChatAdministrators?chat_id=' , aChat id printString.
	(response at: 'ok') ifFalse: [ ^ nil ].
	^ (response at: 'result') collect: [ :spec | 
		  self userBuilderClass new
			  spec: (spec at: 'user');
			  build;
			  result ]