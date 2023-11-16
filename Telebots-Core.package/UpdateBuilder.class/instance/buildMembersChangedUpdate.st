building
buildMembersChangedUpdate

	result ifNotNil: [ self error: 'This should not happen' ].
	result := MembersChangedUpdate new.
	result updateId: (spec at: 'update_id').
	result rawSpec: spec.
