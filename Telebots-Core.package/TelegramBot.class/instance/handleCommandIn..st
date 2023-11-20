hooks
handleCommandIn: aMessage

	| command |
	command := (aMessage text splitOn: Character space) first.
	(self class canPerform: command asValidSelector , ':')
		ifTrue: [ 
		self perform: command asValidSelector , ':' with: aMessage ]
		ifFalse: [ 
		aMessage answer: command , ' is not a recognized command' ]