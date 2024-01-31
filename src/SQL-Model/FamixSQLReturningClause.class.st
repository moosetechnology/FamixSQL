"
I am a RETURNING clause in a query

## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `accesses` | `FamixTWithAccesses` | `accessor` | `FamixTAccess` | Accesses to variables made by this behaviour.|
| `columnReferences` | `FamixSQLTWithColumnReference` | `referencer` | `FamixSQLTColumnReference` | |
| `outgoingInvocations` | `FamixTWithInvocations` | `sender` | `FamixTInvocation` | Outgoing invocations sent by this behaviour.|



"
Class {
	#name : #FamixSQLReturningClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLReturningClause class >> annotation [

	<FMClass: #ReturningClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
