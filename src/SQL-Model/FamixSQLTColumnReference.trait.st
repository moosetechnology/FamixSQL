Trait {
	#name : #FamixSQLTColumnReference,
	#instVars : [
		'#referencer => FMOne type: #FamixSQLTWithColumnReference opposite: #columnReferences',
		'#column => FMOne type: #FamixSQLTColumn opposite: #incomingReferences'
	],
	#traits : 'FamixTAssociation',
	#classTraits : 'FamixTAssociation classTrait',
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTColumnReference classSide >> annotation [

	<FMClass: #TColumnReference super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixSQLTColumnReference >> column [
	"Relation named: #column type: #FamixSQLTColumn opposite: #incomingReferences"

	<generated>
	<target>
	^ column
]

{ #category : #accessing }
FamixSQLTColumnReference >> column: anObject [

	<generated>
	column := anObject
]

{ #category : #accessing }
FamixSQLTColumnReference >> referencer [
	"Relation named: #referencer type: #FamixSQLTWithColumnReference opposite: #columnReferences"

	<generated>
	<source>
	^ referencer
]

{ #category : #accessing }
FamixSQLTColumnReference >> referencer: anObject [

	<generated>
	referencer := anObject
]
