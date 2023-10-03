"
I am reference to a type of the model.
"
Class {
	#name : #FamixSQLTypeReference,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLTTypeReference + FamixTAssociation',
	#classTraits : 'FamixSQLTTypeReference classTrait + FamixTAssociation classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLTypeReference class >> annotation [

	<FMClass: #TypeReference super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
