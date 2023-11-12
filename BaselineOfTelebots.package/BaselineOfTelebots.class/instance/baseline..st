baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			self setUpDependencies: spec. 
				spec package: 'Telebots-Core' with: [ spec requires: 'Teapot' ].
		      spec package: 'Telebots-Example']
