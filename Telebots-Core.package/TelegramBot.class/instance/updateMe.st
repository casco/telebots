initialization
updateMe

	me := self userBuilderClass new
		      spec: ((self sendGET: '/getMe') at: 'result');
		      build;
		      result