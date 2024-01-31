"
I am an abstract super class for behavioural entities that can contain queries in their source code.

## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `queries` | `FamixSQLTQueryContainer` | `containerEntity` | `FamixSQLTQuery` | |



"
Trait {
	#name : #FamixSQLTQueryContainer,
	#instVars : [
		'#queries => FMMany type: #FamixSQLTQuery opposite: #containerEntity'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTQueryContainer classSide >> annotation [

	<FMClass: #TQueryContainer super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLTQueryContainer >> addQuery: anObject [
	<generated>
	^ self queries add: anObject
]

{ #category : #accessing }
FamixSQLTQueryContainer >> queries [
	"Relation named: #queries type: #FamixSQLTQuery opposite: #containerEntity"

	<generated>
	<derived>
	^ queries
]

{ #category : #accessing }
FamixSQLTQueryContainer >> queries: anObject [

	<generated>
	queries value: anObject
]

{ #category : #navigation }
FamixSQLTQueryContainer >> queriesGroup [
	<generated>
	<navigation: 'Queries'>
	^ MooseSpecializedGroup withAll: self queries asSet
]
