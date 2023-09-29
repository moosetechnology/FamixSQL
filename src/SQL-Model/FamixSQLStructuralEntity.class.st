"
I am an abstract superclass for structural entities. A structural entity is an entity that defines how data are structured by the database.
"
Class {
	#name : #FamixSQLStructuralEntity,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixTNamedEntity',
	#classTraits : 'FamixTNamedEntity classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLStructuralEntity class >> annotation [

	<FMClass: #StructuralEntity super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
