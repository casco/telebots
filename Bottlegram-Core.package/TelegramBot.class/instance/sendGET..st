private
sendGET: aActionURL

	| response |
	response := ZnClient new
		            url: self baseURL , aActionURL;
		            get;
		            response.

	^ STONJSON fromString: response contents