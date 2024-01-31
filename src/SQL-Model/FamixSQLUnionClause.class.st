"
I am a UNION clause in a query

## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `references` | `FamixSQLTWithColumnContainerReference` | `referencer` | `FamixSQLTColumnContainerReference` | |



"
Class {
	#name : #FamixSQLUnionClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLUnionClause class >> annotation [

	<FMClass: #UnionClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
