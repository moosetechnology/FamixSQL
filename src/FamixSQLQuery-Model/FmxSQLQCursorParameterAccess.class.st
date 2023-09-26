"
I am an access to a cursor parameter.
"
Class {
	#name : #FmxSQLQCursorParameterAccess,
	#superclass : #FamixSQLReference,
	#traits : 'FamixTAccess + FmxSQLQTWithQualifiedReference',
	#classTraits : 'FamixTAccess classTrait + FmxSQLQTWithQualifiedReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQCursorParameterAccess class >> annotation [

	<FMClass: #CursorParameterAccess super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]
