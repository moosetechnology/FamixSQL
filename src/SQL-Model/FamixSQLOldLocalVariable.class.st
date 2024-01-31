"
I model the special OLD local variable accessible from inside trigger stored procedure.

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
	#name : #FamixSQLOldLocalVariable,
	#superclass : #FamixSQLLocalVariable,
	#traits : 'FamixSQLTColumnContainer',
	#classTraits : 'FamixSQLTColumnContainer classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLOldLocalVariable class >> annotation [

	<FMClass: #OldLocalVariable super: #FamixSQLLocalVariable>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
