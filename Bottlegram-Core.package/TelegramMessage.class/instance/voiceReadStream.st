attachments
voiceReadStream

	| realFileDescription path stream znClient  |
	voice ifNil: [ ^ nil ].

	realFileDescription := ZnClient new
		                       url:
			                       self bot baseURL , '/getFile?file_id='
			                       , voice fileId;
		                       accept: ZnMimeType applicationJson;
		                       get.

	path := (STON fromString: realFileDescription)
		        at: 'result'
		        at: 'file_path'.


	znClient := ZnClient new
		            url: self bot baseURL , '/' , path;
		            beBinary;
		            streaming: true.

	stream := znClient get.
	znClient response isError ifTrue: [ self answer: 'Revento cuanto quise descargar el audio ...' ] ifFalse: [^ stream].

	