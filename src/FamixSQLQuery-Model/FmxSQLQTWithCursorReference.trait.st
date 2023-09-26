Trait {
	#name : #FmxSQLQTWithCursorReference,
	#instVars : [
		'#outgoingCursorReferences => FMMany type: #FmxSQLQCursorReference opposite: #source'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTWithCursorReference classSide >> annotation [

	<FMClass: #TWithCursorReference super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQTWithCursorReference >> addOutgoingCursorReference: anObject [
	<generated>
	^ self outgoingCursorReferences add: anObject
]

{ #category : #accessing }
FmxSQLQTWithCursorReference >> outgoingCursorReferences [
	"Relation named: #outgoingCursorReferences type: #FmxSQLQCursorReference opposite: #source"

	<generated>
	<derived>
	^ outgoingCursorReferences
]

{ #category : #accessing }
FmxSQLQTWithCursorReference >> outgoingCursorReferences: anObject [

	<generated>
	outgoingCursorReferences value: anObject
]
