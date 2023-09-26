Class {
	#name : #FamixSQLSchema,
	#superclass : #FamixSQLEntity,
	#instVars : [
		'#name => FMProperty',
		'#tables => FMMany type: #FamixSQLTable opposite: #schema',
		'#references => FMMany type: #FamixSQLNamespaceReference opposite: #namespace'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLSchema class >> annotation [

	<FMClass: #Schema super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^self
]

{ #category : #adding }
FamixSQLSchema >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #adding }
FamixSQLSchema >> addTable: anObject [
	<generated>
	^ self tables add: anObject
]

{ #category : #accessing }
FamixSQLSchema >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
FamixSQLSchema >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
FamixSQLSchema >> references [
	"Relation named: #references type: #FamixSQLNamespaceReference opposite: #namespace"

	<generated>
	<derived>
	^ references
]

{ #category : #accessing }
FamixSQLSchema >> references: anObject [

	<generated>
	references value: anObject
]

{ #category : #accessing }
FamixSQLSchema >> tables [
	"Relation named: #tables type: #FamixSQLTable opposite: #schema"

	<generated>
	<derived>
	^ tables
]

{ #category : #accessing }
FamixSQLSchema >> tables: anObject [

	<generated>
	tables value: anObject
]
