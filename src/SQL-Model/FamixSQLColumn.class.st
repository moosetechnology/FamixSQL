"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `columnsContainer` | `FamixSQLTColumn` | `columns` | `FamixSQLTColumnContainer` | |

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeReferences` | `FamixSQLTWithTypeReference` | `referencer` | `FamixSQLTTypeReference` | |

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingForeignKeyReferences` | `FamixSQLTColumn` | `primaryKeyColumn` | `FamixSQLForeignColumnReference` | |
| `incomingReferences` | `FamixSQLTColumn` | `column` | `FamixSQLTColumnReference` | |



"
Class {
	#name : #FamixSQLColumn,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixSQLTColumn + FamixSQLTWithTypeReference',
	#classTraits : 'FamixSQLTColumn classTrait + FamixSQLTWithTypeReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLColumn class >> annotation [

	<FMClass: #Column super: #FamixSQLStructuralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
