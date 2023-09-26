"
I am an access to a local variable in a procedure.
"
Class {
	#name : #FmxSQLQLocalVariableAccess,
	#superclass : #FamixSQLReference,
	#traits : 'FamixTAccess + FmxSQLQTWithQualifiedReference',
	#classTraits : 'FamixTAccess classTrait + FmxSQLQTWithQualifiedReference classTrait',
	#instVars : [
		'#localVariable => FMOne type: #FmxSQLQLocalVariable opposite: #accesses'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQLocalVariableAccess class >> annotation [

	<FMClass: #LocalVariableAccess super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQLocalVariableAccess >> isLocalVariableAccess [

	<generated>
	^ true
]

{ #category : #accessing }
FmxSQLQLocalVariableAccess >> localVariable [
	"Relation named: #localVariable type: #FmxSQLQLocalVariable opposite: #accesses"

	<generated>
	<target>
	^ localVariable
]

{ #category : #accessing }
FmxSQLQLocalVariableAccess >> localVariable: anObject [

	<generated>
	localVariable := anObject
]
