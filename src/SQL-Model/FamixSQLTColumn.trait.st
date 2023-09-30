Trait {
	#name : #FamixSQLTColumn,
	#instVars : [
		'#columnsContainer => FMOne type: #FamixSQLTColumnContainer opposite: #columns',
		'#incomingReferences => FMMany type: #FamixSQLTColumnReference opposite: #column'
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

{ #category : #adding }
FamixSQLTColumn >> addIncomingReference: anObject [
	<generated>
	^ self incomingReferences add: anObject
]

{ #category : #accessing }
FamixSQLTColumn >> columnsContainer [
	"Relation named: #columnsContainer type: #FamixSQLTColumnContainer opposite: #columns"

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

{ #category : #accessing }
FamixSQLTColumn >> incomingReferences [
	"Relation named: #incomingReferences type: #FamixSQLTColumnReference opposite: #column"

	<generated>
	<derived>
	^ incomingReferences
]

{ #category : #accessing }
FamixSQLTColumn >> incomingReferences: anObject [

	<generated>
	incomingReferences value: anObject
]
