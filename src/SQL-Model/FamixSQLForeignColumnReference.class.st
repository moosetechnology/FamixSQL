"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `foreignKeyConstraint` | `FamixSQLForeignColumnReference` | `foreignColumnReference` | `FamixSQLForeignKeyConstraint` | |

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `primaryKeyColumn` | `FamixSQLForeignColumnReference` | `incomingForeignKeyReferences` | `FamixSQLTColumn` | |



"
Class {
	#name : #FamixSQLForeignColumnReference,
	#superclass : #FamixSQLEntity,
	#instVars : [
		'#foreignKeyConstraint => FMOne type: #FamixSQLForeignKeyConstraint opposite: #foreignColumnReference',
		'#primaryKeyColumn => FMOne type: #FamixSQLTColumn opposite: #incomingForeignKeyReferences'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLForeignColumnReference class >> annotation [

	<FMClass: #ForeignColumnReference super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLForeignColumnReference >> foreignKeyConstraint [
	"Relation named: #foreignKeyConstraint type: #FamixSQLForeignKeyConstraint opposite: #foreignColumnReference"

	<generated>
	<source>
	^ foreignKeyConstraint
]

{ #category : #accessing }
FamixSQLForeignColumnReference >> foreignKeyConstraint: anObject [

	<generated>
	foreignKeyConstraint := anObject
]

{ #category : #accessing }
FamixSQLForeignColumnReference >> primaryKeyColumn [
	"Relation named: #primaryKeyColumn type: #FamixSQLTColumn opposite: #incomingForeignKeyReferences"

	<generated>
	<target>
	^ primaryKeyColumn
]

{ #category : #accessing }
FamixSQLForeignColumnReference >> primaryKeyColumn: anObject [

	<generated>
	primaryKeyColumn := anObject
]
