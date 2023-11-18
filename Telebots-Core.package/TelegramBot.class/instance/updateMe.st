initialization
updateMe

	me := UserBuilder new
		      spec: ((self sendGET: '/getMe') at: 'result');
		      build;
		      result