instance creation
fromAll: anArrayWithJSONDictionaries

	^ anArrayWithJSONDictionaries collect: [ :each | self from: each ]