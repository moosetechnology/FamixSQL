Trait {
	#name : #FmxSQLQTWithCursor,
	#instVars : [
		'#cursors => FMMany type: #FmxSQLQCursor opposite: #parentBehaviouralEntity'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTWithCursor classSide >> annotation [

	<FMClass: #TWithCursor super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQTWithCursor >> addCursor: anObject [
	<generated>
	^ self cursors add: anObject
]

{ #category : #accessing }
FmxSQLQTWithCursor >> cursors [
	"Relation named: #cursors type: #FmxSQLQCursor opposite: #parentBehaviouralEntity"

	<generated>
	<derived>
	^ cursors
]

{ #category : #accessing }
FmxSQLQTWithCursor >> cursors: anObject [

	<generated>
	cursors value: anObject
]

{ #category : #navigation }
FmxSQLQTWithCursor >> cursorsGroup [
	<generated>
	<navigation: 'Cursors'>
	^ MooseSpecializedGroup withAll: self cursors asSet
]
