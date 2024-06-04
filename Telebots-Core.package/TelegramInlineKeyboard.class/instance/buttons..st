accessing
buttons: aCollectionOfButtons
	"Receives a Collection with Dictionaries."
	
	inlineKeyboardButtons := aCollectionOfButtons collect: [:each | 
			Array with: each.
			].