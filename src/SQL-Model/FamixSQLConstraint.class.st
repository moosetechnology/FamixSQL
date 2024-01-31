"
## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `columnReferences` | `FamixSQLTWithColumnReference` | `referencer` | `FamixSQLTColumnReference` | |



"
Class {
	#name : #FamixSQLConstraint,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixSQLTWithColumnReference',
	#classTraits : 'FamixSQLTWithColumnReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLConstraint class >> annotation [

	<FMClass: #Constraint super: #FamixSQLStructuralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
