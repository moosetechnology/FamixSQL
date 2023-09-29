"
I am an access to a stored procedure parameter.
"
Class {
	#name : #FmxSQLQParameterAccess,
	#superclass : #AnObsoleteFamixSQLReference,
	#traits : 'FamixTAccess',
	#classTraits : 'FamixTAccess classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQParameterAccess class >> annotation [

	<FMClass: #ParameterAccess super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQParameterAccess >> isParameterAccess [

	<generated>
	^ true
]
