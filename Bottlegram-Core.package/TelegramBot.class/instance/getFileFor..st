action
getFileFor: aBottleVoiceOrPhoto

	| result |
	result := self sendGET:
		          '/getFile?file_id=' , aBottleVoiceOrPhoto fileId.
	(result at: 'ok') ifFalse: [ Exception new signal: 'Bot Error' ].
	^ result at: 'result'