system startup
startBot
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"
	|aTeapot|
	self webhook ifNil: [Exception signal: 'you must set a webhook'].
	aTeapot := Teapot configure: {#port -> self port. #debugMode -> false }.
	aTeapot POST: '/'-> [ :req | 
								|response aMessages aMessage|
								response := STONJSON fromString: (req entity string).
								aMessages := response at:'message'.
								self halt: 'This should be refactores using update objects - casco'.
								aMessage := TelegramMessage new: aMessages bot:self.
								self handleMessage: aMessage.];
			 GET: '/' -> 'Bonjour!';
    		 start.
	self teapot: aTeapot.
	"self getUpdates:true do:[:each| self actionBot:each.]"