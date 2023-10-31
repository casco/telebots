instance creation
from: aDictionary

	^ self new
		  id: (aDictionary at: 'file_id');
		  height: (aDictionary at: 'height');
		  width: (aDictionary at: 'width');
		  fileUniqueId: (aDictionary at: 'file_unique_id');
		  fileSize: (aDictionary at: 'file_size')