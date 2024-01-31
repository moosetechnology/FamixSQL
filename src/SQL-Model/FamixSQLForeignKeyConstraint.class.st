"
## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `foreignColumnReference` | `FamixSQLForeignKeyConstraint` | `foreignKeyConstraint` | `FamixSQLForeignColumnReference` | |



"
Class {
	#name : #FamixSQLForeignKeyConstraint,
	#superclass : #FamixSQLTableConstraint,
	#instVars : [
		'#foreignColumnReference => FMOne type: #FamixSQLForeignColumnReference opposite: #foreignKeyConstraint'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLForeignKeyConstraint class >> annotation [

	<FMClass: #ForeignKeyConstraint super: #FamixSQLTableConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLForeignKeyConstraint >> foreignColumnReference [
	"Relation named: #foreignColumnReference type: #FamixSQLForeignColumnReference opposite: #foreignKeyConstraint"

	<generated>
	<derived>
	^ foreignColumnReference
]

{ #category : #accessing }
FamixSQLForeignKeyConstraint >> foreignColumnReference: anObject [

	<generated>
	foreignColumnReference := anObject
]
