"
I model a reference made to a namespace from source code.
"
Class {
	#name : #FamixSQLNamespaceReference,
	#superclass : #FamixSQLReference,
	#instVars : [
		'#namespace => FMOne type: #FamixSQLNamespace opposite: #references'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLNamespaceReference class >> annotation [

	<FMClass: #NamespaceReference super: #FamixSQLReference>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLNamespaceReference >> namespace [
	"Relation named: #namespace type: #FamixSQLNamespace opposite: #references"

	<generated>
	<target>
	^ namespace
]

{ #category : #accessing }
FamixSQLNamespaceReference >> namespace: anObject [

	<generated>
	namespace := anObject
]
