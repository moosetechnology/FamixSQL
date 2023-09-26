"
I am an abstract super class for behavioural entities that can contain queries in their source code.
"
Trait {
	#name : #FmxSQLQTQueryContainer,
	#instVars : [
		'#queries => FMMany type: #FmxSQLQCRUDQuery opposite: #container'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTQueryContainer classSide >> annotation [

	<FMClass: #TQueryContainer super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQTQueryContainer >> addQuery: anObject [
	<generated>
	^ self queries add: anObject
]

{ #category : #accessing }
FmxSQLQTQueryContainer >> queries [
	"Relation named: #queries type: #FmxSQLQCRUDQuery opposite: #container"

	<generated>
	<derived>
	^ queries
]

{ #category : #accessing }
FmxSQLQTQueryContainer >> queries: anObject [

	<generated>
	queries value: anObject
]

{ #category : #navigation }
FmxSQLQTQueryContainer >> queriesGroup [
	<generated>
	<navigation: 'Queries'>
	^ MooseSpecializedGroup withAll: self queries asSet
]
