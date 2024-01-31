"
I am an abstract class for constraints on Tables

## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `table` | `FamixSQLTableConstraint` | `constraints` | `FamixSQLTable` | |



"
Class {
	#name : #FamixSQLTableConstraint,
	#superclass : #FamixSQLConstraint,
	#instVars : [
		'#table => FMOne type: #FamixSQLTable opposite: #constraints'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLTableConstraint class >> annotation [

	<FMClass: #TableConstraint super: #FamixSQLConstraint>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLTableConstraint >> table [
	"Relation named: #table type: #FamixSQLTable opposite: #constraints"

	<generated>
	^ table
]

{ #category : #accessing }
FamixSQLTableConstraint >> table: anObject [

	<generated>
	table := anObject
]
