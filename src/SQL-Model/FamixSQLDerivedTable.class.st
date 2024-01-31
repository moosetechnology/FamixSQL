"
I am a derived table. A derived table is a temporary table created to store temporarily the results of a sub-select query in a select query. Such tables are not globally named as a Tableor a View because they can not be accessed outside the query in which they are computed (which is also the query defining them). Nonetheless, they can get an alias to be referenced inside the query. .

## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `columns` | `FamixSQLTColumnContainer` | `columnsContainer` | `FamixSQLTColumn` | |
| `queries` | `FamixSQLTQueryContainer` | `containerEntity` | `FamixSQLTQuery` | |

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingReferences` | `FamixSQLTColumnContainer` | `columnContainer` | `FamixSQLTColumnContainerReference` | |



"
Class {
	#name : #FamixSQLDerivedTable,
	#superclass : #FamixSQLBehaviouralEntity,
	#traits : 'FamixSQLTColumnContainer + FamixSQLTQueryContainer',
	#classTraits : 'FamixSQLTColumnContainer classTrait + FamixSQLTQueryContainer classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLDerivedTable class >> annotation [

	<FMClass: #DerivedTable super: #FamixSQLBehaviouralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
