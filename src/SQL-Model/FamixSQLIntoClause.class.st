"
I am an INTO clause in a query

## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `columnReferences` | `FamixSQLTWithColumnReference` | `referencer` | `FamixSQLTColumnReference` | |
| `references` | `FamixSQLTWithColumnContainerReference` | `referencer` | `FamixSQLTColumnContainerReference` | |



"
Class {
	#name : #FamixSQLIntoClause,
	#superclass : #FamixSQLClause,
	#traits : 'FamixSQLTWithColumnContainerReference + FamixSQLTWithColumnReference',
	#classTraits : 'FamixSQLTWithColumnContainerReference classTrait + FamixSQLTWithColumnReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLIntoClause class >> annotation [

	<FMClass: #IntoClause super: #FamixSQLClause>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
