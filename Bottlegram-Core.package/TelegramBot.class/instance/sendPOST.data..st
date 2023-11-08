private
sendPOST: aActionURL data: aData

	| response |
	response := ZnClient new
		            url: self baseURL , aActionURL;
		            formAddAll: aData;
		            post;
		            response.

	^ STONJSON fromString: response contents