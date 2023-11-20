building
build

	| userSpec |
	userSpec := spec at: 'user'.
	result := TelegramUser new
		          id: (userSpec at: 'id');
		          firstname: (userSpec at: 'first_name');
		          lastname: (userSpec at: 'last_name' ifAbsent: nil);
		          username: (userSpec at: 'username' ifAbsent: nil);
		          isBot: (userSpec at: 'is_bot');
		          yourself