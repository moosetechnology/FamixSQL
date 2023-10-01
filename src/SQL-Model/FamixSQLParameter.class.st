"
I am a parameter of a stored procedure. I have a type.
"
Class {
	#name : #FamixSQLParameter,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLTWithTypeReference + FamixTAccessible + FamixTParameter',
	#classTraits : 'FamixSQLTWithTypeReference classTrait + FamixTAccessible classTrait + FamixTParameter classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLParameter class >> annotation [

	<FMClass: #Parameter super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
