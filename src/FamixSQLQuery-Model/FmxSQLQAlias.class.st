"
I am an Alias
"
Class {
	#name : #FmxSQLQAlias,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTAccessible + FamixTNamedEntity + FmxSQLQTWithDerivedTableReference',
	#classTraits : 'FamixTAccessible classTrait + FamixTNamedEntity classTrait + FmxSQLQTWithDerivedTableReference classTrait',
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxSQLQTWithAlias opposite: #aliases'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQAlias class >> annotation [

	<FMClass: #Alias super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQAlias >> isAlias [

	<generated>
	^ true
]

{ #category : #accessing }
FmxSQLQAlias >> parentBehaviouralEntity [
	"Relation named: #parentBehaviouralEntity type: #FmxSQLQTWithAlias opposite: #aliases"

	<generated>
	<container>
	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxSQLQAlias >> parentBehaviouralEntity: anObject [

	<generated>
	parentBehaviouralEntity := anObject
]

{ #category : #navigation }
FmxSQLQAlias >> parentBehaviouralEntityGroup [
	<generated>
	<navigation: 'ParentBehaviouralEntity'>
	^ MooseSpecializedGroup with: self parentBehaviouralEntity
]
