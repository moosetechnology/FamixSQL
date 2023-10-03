"
I am a local variable of a stored procedure. I have a type.
"
Class {
	#name : #FamixSQLLocalVariable,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLTWithTypeReference + FamixTAccessible + FamixTLocalVariable',
	#classTraits : 'FamixSQLTWithTypeReference classTrait + FamixTAccessible classTrait + FamixTLocalVariable classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLLocalVariable class >> annotation [

	<FMClass: #LocalVariable super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
