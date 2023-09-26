Trait {
	#name : #FmxSQLQTWithViewReference,
	#instVars : [
		'#outgoingViewReferences => FMMany type: #FmxSQLQViewReference opposite: #source'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTWithViewReference classSide >> annotation [

	<FMClass: #TWithViewReference super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQTWithViewReference >> addOutgoingViewReference: anObject [
	<generated>
	^ self outgoingViewReferences add: anObject
]

{ #category : #accessing }
FmxSQLQTWithViewReference >> outgoingViewReferences [
	"Relation named: #outgoingViewReferences type: #FmxSQLQViewReference opposite: #source"

	<generated>
	<derived>
	^ outgoingViewReferences
]

{ #category : #accessing }
FmxSQLQTWithViewReference >> outgoingViewReferences: anObject [

	<generated>
	outgoingViewReferences value: anObject
]
