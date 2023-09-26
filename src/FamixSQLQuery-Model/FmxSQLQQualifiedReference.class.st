"
I model a qualified reference.

For example, namespace.table.column is modeled as 3 references:
- NamespaceReference
- TableReference
- ColumnReference

together grouped in a QualifiedReference.

One can ask the #qualifiedReference to any reference in the system, it will be set if it has one.
"
Class {
	#name : #FmxSQLQQualifiedReference,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#instVars : [
		'#references => FMMany type: #FmxSQLQTWithQualifiedReference opposite: #qualifiedReference'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQQualifiedReference class >> annotation [

	<FMClass: #QualifiedReference super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQQualifiedReference >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #accessing }
FmxSQLQQualifiedReference >> references [
	"Relation named: #references type: #FmxSQLQTWithQualifiedReference opposite: #qualifiedReference"

	<generated>
	<derived>
	^ references
]

{ #category : #accessing }
FmxSQLQQualifiedReference >> references: anObject [

	<generated>
	references value: anObject
]
