Trait {
	#name : #FamixSQLTColumn,
	#instVars : [
		'#columnsContainer => FMOne type: #FamixSQLTColumnsContainer opposite: #columns'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTColumn classSide >> annotation [

	<FMClass: #TColumn super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLTColumn >> columnsContainer [
	"Relation named: #columnsContainer type: #FamixSQLTColumnsContainer opposite: #columns"

	<generated>
	<container>
	^ columnsContainer
]

{ #category : #accessing }
FamixSQLTColumn >> columnsContainer: anObject [

	<generated>
	columnsContainer := anObject
]

{ #category : #navigation }
FamixSQLTColumn >> columnsContainerGroup [
	<generated>
	<navigation: 'ColumnsContainer'>
	^ MooseSpecializedGroup with: self columnsContainer
]
