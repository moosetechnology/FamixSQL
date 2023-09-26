Trait {
	#name : #FmxSQLQTWithDerivedTableReference,
	#instVars : [
		'#outgoingDerivedTableReferences => FMMany type: #FmxSQLQDerivedTableReference opposite: #source'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTWithDerivedTableReference classSide >> annotation [

	<FMClass: #TWithDerivedTableReference super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQTWithDerivedTableReference >> addOutgoingDerivedTableReference: anObject [
	<generated>
	^ self outgoingDerivedTableReferences add: anObject
]

{ #category : #accessing }
FmxSQLQTWithDerivedTableReference >> outgoingDerivedTableReferences [
	"Relation named: #outgoingDerivedTableReferences type: #FmxSQLQDerivedTableReference opposite: #source"

	<generated>
	<derived>
	^ outgoingDerivedTableReferences
]

{ #category : #accessing }
FmxSQLQTWithDerivedTableReference >> outgoingDerivedTableReferences: anObject [

	<generated>
	outgoingDerivedTableReferences value: anObject
]
