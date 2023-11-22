streaming
readStreamWith: aBot

	| realFileDescription path stream znClient |
	realFileDescription := ZnClient new
		                       url:
			                       aBot baseURL , '/getFile?file_id='
			                       , fileId;
		                       accept: ZnMimeType applicationJson;
		                       get.

	path := (STON fromString: realFileDescription)
		        at: 'result'
		        at: 'file_path'.


	znClient := ZnClient new
		            url: aBot baseFileURL , '/' , path;
		            beBinary;
		            streaming: true.

	stream := znClient get.
	znClient response isError
		ifTrue: [ self error: 'error creating file download stream' ]
		ifFalse: [ ^ stream ]