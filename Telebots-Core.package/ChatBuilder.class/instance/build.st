building
build

	^ self newInstance
		  id: (spec at: 'id');
		  type: (spec at: 'type');
		  title: (spec at: 'title' ifAbsent: [ nil ]);
		  description: (spec at: 'description' ifAbsent: [ nil ]);
		  yourself