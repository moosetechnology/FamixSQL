"
I am a special stored procedure used to define the actions a trigger perform.

This concept does not exists in all DBMS (for example, in MySQL a trigger has a body directly defined when defining the trigger). Nevertheless, it allows to unify the different approach take by different DBMS. In the meta-model, a trigger is always defined as referencing a trigger stored procedure. For DBMS where it is not implemented like that in reality, the trigger stored procedure as no name because it is virtual.

## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `trigger` | `FamixSQLTriggerStoredProcedure` | `storedProcedure` | `FamixSQLTrigger` | |



"
Class {
	#name : #FamixSQLTriggerStoredProcedure,
	#superclass : #FamixSQLStoredProcedure,
	#instVars : [
		'#trigger => FMMany type: #FamixSQLTrigger opposite: #storedProcedure'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLTriggerStoredProcedure class >> annotation [

	<FMClass: #TriggerStoredProcedure super: #FamixSQLStoredProcedure>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLTriggerStoredProcedure >> addTrigger: anObject [
	<generated>
	^ self trigger add: anObject
]

{ #category : #testing }
FamixSQLTriggerStoredProcedure >> isTriggerStoredProcedure [

	<generated>
	^ true
]

{ #category : #accessing }
FamixSQLTriggerStoredProcedure >> trigger [
	"Relation named: #trigger type: #FamixSQLTrigger opposite: #storedProcedure"

	<generated>
	<derived>
	^ trigger
]

{ #category : #accessing }
FamixSQLTriggerStoredProcedure >> trigger: anObject [

	<generated>
	trigger value: anObject
]
