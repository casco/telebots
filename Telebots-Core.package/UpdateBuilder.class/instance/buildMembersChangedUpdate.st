building
buildMembersChangedUpdate

	| update  |
	update := MembersChangedUpdate new.
	update updateId: (spec at: 'update_id').
	update rawSpec: spec.
	^ update