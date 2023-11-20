building
build

	result := TelegramUser new
		          id: (spec at: 'id');
		          firstname: (spec at: 'first_name');
		          lastname: (spec at: 'last_name' ifAbsent: nil);
		          username: (spec at: 'username' ifAbsent: nil);
		          isBot: (spec at: 'is_bot');
		          yourself