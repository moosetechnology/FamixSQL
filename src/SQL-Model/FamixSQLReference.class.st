"
I am an abstract object that represent a reference made to another entity in the source code a behavioural entity.
"
Class {
	#name : #FamixSQLReference,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixTAssociation',
	#classTraits : 'FamixTAssociation classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLReference class >> annotation [

	<FMClass: #Reference super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
