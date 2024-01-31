"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `referencer` | `FamixSQLTColumnContainerReference` | `references` | `FamixSQLTWithColumnContainerReference` | |

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `columnContainer` | `FamixSQLTColumnContainerReference` | `incomingReferences` | `FamixSQLTColumnContainer` | |



"
Class {
	#name : #FamixSQLColumnContainerReference,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLTColumnContainerReference',
	#classTraits : 'FamixSQLTColumnContainerReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLColumnContainerReference class >> annotation [

	<FMClass: #ColumnContainerReference super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
