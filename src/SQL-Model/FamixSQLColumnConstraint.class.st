"
I am an abstract class for constraints on Columns

## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `columnReferences` | `FamixSQLTWithColumnReference` | `referencer` | `FamixSQLTColumnReference` | |



"
Class {
	#name : #FamixSQLColumnConstraint,
	#superclass : #FamixSQLConstraint,
	#traits : 'FamixSQLTWithColumnReference',
	#classTraits : 'FamixSQLTWithColumnReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLColumnConstraint class >> annotation [

	<FMClass: #ColumnConstraint super: #FamixSQLConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
