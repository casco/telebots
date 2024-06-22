files
readStreamForFileId: aFileId

	| fileDescription path znClient stream |
	fileDescription := ZnClient new
		                   url:
			                   self baseURL , '/getFile?file_id=' , aFileId;
		                   accept: ZnMimeType applicationJson;
		                   get.

	path := (STON fromString: fileDescription)
		        at: 'result'
		        at: 'file_path'.


	znClient := ZnClient new
		            url: self baseFileURL , '/' , path;
		            beBinary;
		            streaming: true.

	stream := znClient get.
	znClient response isError
		ifTrue: [ 
		self answer: 'Revento cuanto quise descargar el audio ...' ]
		ifFalse: [ ^ stream ]