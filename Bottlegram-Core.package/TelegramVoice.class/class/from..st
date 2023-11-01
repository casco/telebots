instance creation
from: aDictionary

	^ self new
		  duration: (aDictionary at: 'duration');
		  fileId: (aDictionary at: 'file_id');
		  fileSize: (aDictionary at: 'file_size');
		  fileUniqueId: (aDictionary at: 'file_unique_id');
		  mimeType: (aDictionary at: 'mime_type');
		  yourself