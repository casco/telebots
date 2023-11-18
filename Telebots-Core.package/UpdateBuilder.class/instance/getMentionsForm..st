private
getMentionsForm: msgSpec

	| mentionEntities |
	mentionEntities := (msgSpec at: 'entities' ifAbsent: [Set new]) select: [ :each | 
		                   (each at: 'type') = 'mention' ].
	^ mentionEntities collect: [ :mention | 
		  ((msgSpec at: 'text')
			   copyFrom: (mention at: 'offset') + 1
			   to: (mention at: 'offset') + (mention at: 'length') + 1)
			  trimBoth ]