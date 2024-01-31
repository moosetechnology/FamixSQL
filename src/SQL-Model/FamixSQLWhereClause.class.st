"
I am a WHERE clause in a query

## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `accesses` | `FamixTWithAccesses` | `accessor` | `FamixTAccess` | Accesses to variables made by this behaviour.|
| `columnReferences` | `FamixSQLTWithColumnReference` | `referencer` | `FamixSQLTColumnReference` | |
| `outgoingInvocations` | `FamixTWithInvocations` | `sender` | `FamixTInvocation` | Outgoing invocations sent by this behaviour.|
| `references` | `FamixSQLTWithColumnContainerReference` | `referencer` | `FamixSQLTColumnContainerReference` | |



"
Class {
	#name : #FamixSQLWhereClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference + FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLWhereClause class >> annotation [

	<FMClass: #WhereClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
