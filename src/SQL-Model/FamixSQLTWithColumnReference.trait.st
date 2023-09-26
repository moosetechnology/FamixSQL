Trait {
	#name : #FamixSQLTWithColumnReference,
	#instVars : [
		'#columnReferences => FMMany type: #FamixSQLColumnReference opposite: #source'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTWithColumnReference classSide >> annotation [

	<FMClass: #TWithColumnReference super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^self
]

{ #category : #adding }
FamixSQLTWithColumnReference >> addColumnReference: anObject [
	<generated>
	^ self columnReferences add: anObject
]

{ #category : #accessing }
FamixSQLTWithColumnReference >> columnReferences [
	"Relation named: #columnReferences type: #FamixSQLColumnReference opposite: #source"

	<generated>
	<derived>
	<target>
	^ columnReferences
]

{ #category : #accessing }
FamixSQLTWithColumnReference >> columnReferences: anObject [

	<generated>
	columnReferences value: anObject
]
