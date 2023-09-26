Trait {
	#name : #FmxSQLQTWithReferencesGroupReference,
	#instVars : [
		'#outgoingReferencesGroupReferences => FMMany type: #FmxSQLQTReferencesGroupReference opposite: #source'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTWithReferencesGroupReference classSide >> annotation [

	<FMClass: #TWithReferencesGroupReference super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQTWithReferencesGroupReference >> addOutgoingReferencesGroupReference: anObject [
	<generated>
	^ self outgoingReferencesGroupReferences add: anObject
]

{ #category : #accessing }
FmxSQLQTWithReferencesGroupReference >> outgoingReferencesGroupReferences [
	"Relation named: #outgoingReferencesGroupReferences type: #FmxSQLQTReferencesGroupReference opposite: #source"

	<generated>
	<derived>
	^ outgoingReferencesGroupReferences
]

{ #category : #accessing }
FmxSQLQTWithReferencesGroupReference >> outgoingReferencesGroupReferences: anObject [

	<generated>
	outgoingReferencesGroupReferences value: anObject
]

{ #category : #navigation }
FmxSQLQTWithReferencesGroupReference >> outgoingReferencesGroupReferencesGroup [
	<generated>
	<navigation: 'OutgoingReferencesGroupReferences'>
	^ MooseSpecializedGroup withAll: self outgoingReferencesGroupReferences asSet
]
