Trait {
	#name : #FmxSQLQTDefiningDerivedTables,
	#instVars : [
		'#derivedTablesDefined => FMMany type: #FmxSQLQDerivedTable opposite: #parentQuery'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTDefiningDerivedTables classSide >> annotation [

	<FMClass: #TDefiningDerivedTables super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQTDefiningDerivedTables >> addDerivedTablesDefined: anObject [
	<generated>
	^ self derivedTablesDefined add: anObject
]

{ #category : #accessing }
FmxSQLQTDefiningDerivedTables >> derivedTablesDefined [
	"Relation named: #derivedTablesDefined type: #FmxSQLQDerivedTable opposite: #parentQuery"

	<generated>
	<derived>
	^ derivedTablesDefined
]

{ #category : #accessing }
FmxSQLQTDefiningDerivedTables >> derivedTablesDefined: anObject [

	<generated>
	derivedTablesDefined value: anObject
]

{ #category : #navigation }
FmxSQLQTDefiningDerivedTables >> derivedTablesDefinedGroup [
	<generated>
	<navigation: 'DerivedTablesDefined'>
	^ MooseSpecializedGroup withAll: self derivedTablesDefined asSet
]
