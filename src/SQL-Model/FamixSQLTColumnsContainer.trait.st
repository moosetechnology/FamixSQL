"
I am an abstract super class for entities that contain columns. Two of my well-known subclasses are the table and the view.
"
Trait {
	#name : #FamixSQLTColumnsContainer,
	#instVars : [
		'#columns => FMMany type: #FamixSQLTColumn opposite: #columnsContainer'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTColumnsContainer classSide >> annotation [

	<FMClass: #TColumnsContainer super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^self
]

{ #category : #adding }
FamixSQLTColumnsContainer >> addColumn: anObject [
	<generated>
	^ self columns add: anObject
]

{ #category : #accessing }
FamixSQLTColumnsContainer >> columns [
	"Relation named: #columns type: #FamixSQLTColumn opposite: #columnsContainer"

	<generated>
	<derived>
	^ columns
]

{ #category : #accessing }
FamixSQLTColumnsContainer >> columns: anObject [

	<generated>
	columns value: anObject
]

{ #category : #navigation }
FamixSQLTColumnsContainer >> columnsGroup [
	<generated>
	<navigation: 'Columns'>
	^ MooseSpecializedGroup withAll: self columns asSet
]
