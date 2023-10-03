"
I am a stored procedure. That is to say, a function that is defined inside the database.
"
Class {
	#name : #FamixSQLStoredProcedure,
	#superclass : #FamixSQLBehaviouralEntity,
	#traits : 'FamixSQLTQueryContainer + FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixSQLTWithTypeReference + FamixTInvocable + FamixTNamespace + FamixTWithAccesses + FamixTWithInvocations + FamixTWithLocalVariables + FamixTWithParameters + FamixTWithReferences',
	#classTraits : 'FamixSQLTQueryContainer classTrait + FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixSQLTWithTypeReference classTrait + FamixTInvocable classTrait + FamixTNamespace classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait + FamixTWithReferences classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLStoredProcedure class >> annotation [

	<FMClass: #StoredProcedure super: #FamixSQLBehaviouralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #testing }
FamixSQLStoredProcedure >> isStoredProcedure [

	<generated>
	^ true
]
