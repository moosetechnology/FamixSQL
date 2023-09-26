Trait {
	#name : #FmxSQLQTReferencesGroupReference,
	#instVars : [
		'#source => FMOne type: #FmxSQLQTWithReferencesGroupReference opposite: #outgoingReferencesGroupReferences',
		'#referencesGroup => FMOne type: #FmxSQLQReferencesGroup opposite: #incomingReferencesGroupReference'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTReferencesGroupReference classSide >> annotation [

	<FMClass: #TReferencesGroupReference super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQTReferencesGroupReference >> referencesGroup [
	"Relation named: #referencesGroup type: #FmxSQLQReferencesGroup opposite: #incomingReferencesGroupReference"

	<generated>
	^ referencesGroup
]

{ #category : #accessing }
FmxSQLQTReferencesGroupReference >> referencesGroup: anObject [

	<generated>
	referencesGroup := anObject
]

{ #category : #accessing }
FmxSQLQTReferencesGroupReference >> source [
	"Relation named: #source type: #FmxSQLQTWithReferencesGroupReference opposite: #outgoingReferencesGroupReferences"

	<generated>
	<container>
	^ source
]

{ #category : #accessing }
FmxSQLQTReferencesGroupReference >> source: anObject [

	<generated>
	source := anObject
]

{ #category : #navigation }
FmxSQLQTReferencesGroupReference >> sourceGroup [
	<generated>
	<navigation: 'Source'>
	^ MooseSpecializedGroup with: self source
]
