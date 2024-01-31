"
I model the special NEW local variable accessible from inside trigger stored procedure.

## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `columns` | `FamixSQLTColumnContainer` | `columnsContainer` | `FamixSQLTColumn` | |

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingReferences` | `FamixSQLTColumnContainer` | `columnContainer` | `FamixSQLTColumnContainerReference` | |



"
Class {
	#name : #FamixSQLNewLocalVariable,
	#superclass : #FamixSQLLocalVariable,
	#traits : 'FamixSQLTColumnContainer',
	#classTraits : 'FamixSQLTColumnContainer classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLNewLocalVariable class >> annotation [

	<FMClass: #NewLocalVariable super: #FamixSQLLocalVariable>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
