"
I am a call to a stored procedure of the model.
"
Class {
	#name : #FmxSQLQStoredProcedureCall,
	#superclass : #FamixSQLReference,
	#traits : 'FamixTInvocation + FmxSQLQTWithQualifiedReference',
	#classTraits : 'FamixTInvocation classTrait + FmxSQLQTWithQualifiedReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQStoredProcedureCall class >> annotation [

	<FMClass: #StoredProcedureCall super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQStoredProcedureCall >> addArgument: anObject [
	<generated>
	^ self arguments add: anObject
]

{ #category : #accessing }
FmxSQLQStoredProcedureCall >> arguments [
	"Relation named: #arguments type: #FamixSQLReference opposite: #storedProcedureContainer"

	<generated>
	<derived>
	<FMProperty: #arguments type: #FamixSQLReference opposite: #storedProcedureContainer>
	^ self attributeAt: #arguments ifAbsentPut: [ FMMultivalueLink on: self opposite: #storedProcedureContainer: ]
]

{ #category : #accessing }
FmxSQLQStoredProcedureCall >> arguments: anObject [

	<generated>
	self arguments value: anObject
]

{ #category : #navigation }
FmxSQLQStoredProcedureCall >> argumentsGroup [
	<generated>
	<navigation: 'Arguments'>
	^ MooseSpecializedGroup withAll: self arguments asSet
]

{ #category : #testing }
FmxSQLQStoredProcedureCall >> isStoredProcedureCall [

	<generated>
	^ true
]
