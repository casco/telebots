building
build

	result := TelegramUser new
		          id: (spec at: 'id');
		          firstname: (spec at: 'first_name');
		          lastname: (spec at: 'last_name');
		          username: (spec at: 'username');
		          isBot: (spec at: 'is_bot');
		          yourself