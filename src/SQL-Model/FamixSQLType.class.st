"
I represent a Type in the database. I can be used for a column, a local variable, a parameter, etc...

## Relations
======================

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingReferences` | `FamixSQLTType` | `type` | `FamixSQLTTypeReference` | |



"
Class {
	#name : #FamixSQLType,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixSQLTType',
	#classTraits : 'FamixSQLTType classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLType class >> annotation [

	<FMClass: #Type super: #FamixSQLStructuralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
