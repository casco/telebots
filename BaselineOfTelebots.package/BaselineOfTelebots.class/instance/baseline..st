baselines
baseline: spec

	<baseline>
	self declareDependenciesWith: spec.
	spec for: #common do: [ 
		spec
			package: 'Telebots-Core';
			package: 'Telebots-Example';
			package: 'Telebots-Webhooked'
			with: [ spec requires: #( 'Telebots-Core' 'Teapot' ) ].
		spec
			group: 'default' with: #( 'Telebots-Core' 'Telebots-Example' );
			group: 'webhooked'
			with: #( 'Telebots-Webhooked' 'Telebots-Example' ) ]