baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			self setUpDependencies: spec. 
				spec package: 'Bottlegram-Core' with: [ spec requires: 'Teapot' ].
		      spec package: 'Bottlegram-Example']
