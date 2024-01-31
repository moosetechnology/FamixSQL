"
I am a USING clause in a query

## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `references` | `FamixSQLTWithColumnContainerReference` | `referencer` | `FamixSQLTColumnContainerReference` | |



"
Class {
	#name : #FamixSQLUsingClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLUsingClause class >> annotation [

	<FMClass: #UsingClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
