"
I am a namespace. I hold entities to define a name scope where name duplicates are forbidden.
"
Class {
	#name : #FamixSQLNamespace,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixTNamespace',
	#classTraits : 'FamixTNamespace classTrait',
	#instVars : [
		'#references => FMMany type: #FamixSQLNamespaceReference opposite: #namespace',
		'#tables => FMMany type: #FamixSQLTable opposite: #namespace'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixSQLStructuralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLNamespace >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #adding }
FamixSQLNamespace >> addTable: anObject [
	<generated>
	^ self tables add: anObject
]

{ #category : #accessing }
FamixSQLNamespace >> references [
	"Relation named: #references type: #FamixSQLNamespaceReference opposite: #namespace"

	<generated>
	<derived>
	^ references
]

{ #category : #accessing }
FamixSQLNamespace >> references: anObject [

	<generated>
	references value: anObject
]

{ #category : #accessing }
FamixSQLNamespace >> tables [
	"Relation named: #tables type: #FamixSQLTable opposite: #namespace"

	<generated>
	<derived>
	^ tables
]

{ #category : #accessing }
FamixSQLNamespace >> tables: anObject [

	<generated>
	tables value: anObject
]
