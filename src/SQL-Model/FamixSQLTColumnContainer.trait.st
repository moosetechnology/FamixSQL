"
I am an abstract super class for entities that contain columns. Two of my well-known subclasses are the table and the view.

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
Trait {
	#name : #FamixSQLTColumnContainer,
	#instVars : [
		'#columns => FMMany type: #FamixSQLTColumn opposite: #columnsContainer',
		'#incomingReferences => FMMany type: #FamixSQLTColumnContainerReference opposite: #columnContainer'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTColumnContainer classSide >> annotation [

	<FMClass: #TColumnContainer super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLTColumnContainer >> addColumn: anObject [
	<generated>
	^ self columns add: anObject
]

{ #category : #adding }
FamixSQLTColumnContainer >> addIncomingReference: anObject [
	<generated>
	^ self incomingReferences add: anObject
]

{ #category : #accessing }
FamixSQLTColumnContainer >> columns [
	"Relation named: #columns type: #FamixSQLTColumn opposite: #columnsContainer"

	<generated>
	<derived>
	^ columns
]

{ #category : #accessing }
FamixSQLTColumnContainer >> columns: anObject [

	<generated>
	columns value: anObject
]

{ #category : #navigation }
FamixSQLTColumnContainer >> columnsGroup [
	<generated>
	<navigation: 'Columns'>
	^ MooseSpecializedGroup withAll: self columns asSet
]

{ #category : #accessing }
FamixSQLTColumnContainer >> incomingReferences [
	"Relation named: #incomingReferences type: #FamixSQLTColumnContainerReference opposite: #columnContainer"

	<generated>
	<derived>
	^ incomingReferences
]

{ #category : #accessing }
FamixSQLTColumnContainer >> incomingReferences: anObject [

	<generated>
	incomingReferences value: anObject
]
