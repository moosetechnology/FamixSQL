Trait {
	#name : #FmxSQLQTWithAlias,
	#instVars : [
		'#aliases => FMMany type: #FmxSQLQAlias opposite: #parentBehaviouralEntity'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTWithAlias classSide >> annotation [

	<FMClass: #TWithAlias super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQTWithAlias >> addAliase: anObject [
	<generated>
	^ self aliases add: anObject
]

{ #category : #accessing }
FmxSQLQTWithAlias >> aliases [
	"Relation named: #aliases type: #FmxSQLQAlias opposite: #parentBehaviouralEntity"

	<generated>
	<derived>
	^ aliases
]

{ #category : #accessing }
FmxSQLQTWithAlias >> aliases: anObject [

	<generated>
	aliases value: anObject
]

{ #category : #navigation }
FmxSQLQTWithAlias >> aliasesGroup [
	<generated>
	<navigation: 'Aliases'>
	^ MooseSpecializedGroup withAll: self aliases asSet
]
