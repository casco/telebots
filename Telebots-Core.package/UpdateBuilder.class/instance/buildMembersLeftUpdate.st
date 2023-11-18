building
buildMembersLeftUpdate

	result ifNotNil: [ self error: 'This should not happen' ].
	result := MembersLeftUpdate new.
	result updateId: (spec at: 'update_id').
	result rawSpec: spec.
