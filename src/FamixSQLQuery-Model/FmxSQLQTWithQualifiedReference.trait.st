Trait {
	#name : #FmxSQLQTWithQualifiedReference,
	#instVars : [
		'#qualifiedReference => FMOne type: #FmxSQLQQualifiedReference opposite: #references'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTWithQualifiedReference classSide >> annotation [

	<FMClass: #TWithQualifiedReference super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQTWithQualifiedReference >> qualifiedReference [
	"Relation named: #qualifiedReference type: #FmxSQLQQualifiedReference opposite: #references"

	<generated>
	^ qualifiedReference
]

{ #category : #accessing }
FmxSQLQTWithQualifiedReference >> qualifiedReference: anObject [

	<generated>
	qualifiedReference := anObject
]
