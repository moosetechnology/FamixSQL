"
I am a view. I can be used transparently as a table but I do not hold data. My data are fetched by the SELECT query which defines myself.
"
Class {
	#name : #FmxSQLQView,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTNamedEntity + FmxSQLQBehaviouralEntity + FmxSQLQTQueryContainer',
	#classTraits : 'FamixTNamedEntity classTrait + FmxSQLQBehaviouralEntity classTrait + FmxSQLQTQueryContainer classTrait',
	#instVars : [
		'#query => FMOne type: #FmxSQLQSelectQuery opposite: #viewDefining',
		'#references => FMMany type: #FmxSQLQViewReference opposite: #view'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQView class >> annotation [

	<FMClass: #View super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQView >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #testing }
FmxSQLQView >> isView [

	<generated>
	^ true
]

{ #category : #accessing }
FmxSQLQView >> query [
	"Relation named: #query type: #FmxSQLQSelectQuery opposite: #viewDefining"

	<generated>
	^ query
]

{ #category : #accessing }
FmxSQLQView >> query: anObject [

	<generated>
	query := anObject
]

{ #category : #navigation }
FmxSQLQView >> queryGroup [
	<generated>
	<navigation: 'Query'>
	^ MooseSpecializedGroup with: self query
]

{ #category : #accessing }
FmxSQLQView >> references [
	"Relation named: #references type: #FmxSQLQViewReference opposite: #view"

	<generated>
	<derived>
	^ references
]

{ #category : #accessing }
FmxSQLQView >> references: anObject [

	<generated>
	references value: anObject
]
