"
I am a stored procedure. That is to say, a function that is defined inside the database.
"
Class {
	#name : #FmxSQLQStoredProcedure,
	#superclass : #FmxSQLQEntity,
	#traits : 'AnObsoleteFamixSQLTWithColumnReference + FamixTHasImmediateSource + FamixTInvocable + FamixTNamedEntity + FamixTWithAccesses + FamixTWithInvocations + FamixTWithLocalVariables + FamixTWithParameters + FamixTWithReferences + FmxSQLQBehaviouralEntity + FmxSQLQTQueryContainer + FmxSQLQTWithAlias + FmxSQLQTWithCursor + FmxSQLQTWithCursorReference + FmxSQLQTWithViewReference',
	#classTraits : 'AnObsoleteFamixSQLTWithColumnReference classTrait + FamixTHasImmediateSource classTrait + FamixTInvocable classTrait + FamixTNamedEntity classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait + FamixTWithReferences classTrait + FmxSQLQBehaviouralEntity classTrait + FmxSQLQTQueryContainer classTrait + FmxSQLQTWithAlias classTrait + FmxSQLQTWithCursor classTrait + FmxSQLQTWithCursorReference classTrait + FmxSQLQTWithViewReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQStoredProcedure class >> annotation [

	<FMClass: #StoredProcedure super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQStoredProcedure >> addCheckConstraintsCalling: anObject [
	<generated>
	^ self checkConstraintsCalling add: anObject
]

{ #category : #accessing }
FmxSQLQStoredProcedure >> checkConstraintsCalling [
	"Relation named: #checkConstraintsCalling type: #FamixSQLCheckConstraint opposite: #storedProceduresCalled"

	<generated>
	<FMProperty: #checkConstraintsCalling type: #FamixSQLCheckConstraint opposite: #storedProceduresCalled>
	^ self attributeAt: #checkConstraintsCalling ifAbsentPut: [ FMMultiMultivalueLink on: self opposite: #storedProceduresCalled ]
]

{ #category : #accessing }
FmxSQLQStoredProcedure >> checkConstraintsCalling: anObject [

	<generated>
	self checkConstraintsCalling value: anObject
]

{ #category : #testing }
FmxSQLQStoredProcedure >> isStoredProcedure [

	<generated>
	^ true
]

{ #category : #accessing }
FmxSQLQStoredProcedure >> returnType [
	"Relation named: #returnType type: #FamixSQLAbstractType opposite: #storedProceduresReturning"

	<generated>
	<FMProperty: #returnType type: #FamixSQLAbstractType opposite: #storedProceduresReturning>
	^ self attributeAt: #returnType ifAbsent: [ nil ]
]

{ #category : #accessing }
FmxSQLQStoredProcedure >> returnType: anObject [

	<generated>
	self attributeAt: #returnType put: (FMMultivalueLink on: self update: #storedProceduresReturning from: self returnType to: anObject).
]
