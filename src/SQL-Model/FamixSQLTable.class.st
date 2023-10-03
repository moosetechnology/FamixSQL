Class {
	#name : #FamixSQLTable,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixSQLTColumnContainer',
	#classTraits : 'FamixSQLTColumnContainer classTrait',
	#instVars : [
		'#constraints => FMMany type: #FamixSQLTableConstraint opposite: #table',
		'#parentNamespace => FMOne type: #FamixSQLNamespace opposite: #table'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLTable class >> annotation [

	<FMClass: #Table super: #FamixSQLStructuralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #groups }
FamixSQLTable class >> annotationFamixSQLTableGroup [
	<generated>
	<mooseGroup>
	^ FamixSQLTableGroup
]

{ #category : #adding }
FamixSQLTable >> addConstraint: anObject [
	<generated>
	^ self constraints add: anObject
]

{ #category : #accessing }
FamixSQLTable >> constraints [
	"Relation named: #constraints type: #FamixSQLTableConstraint opposite: #table"

	<generated>
	<derived>
	^ constraints
]

{ #category : #accessing }
FamixSQLTable >> constraints: anObject [

	<generated>
	constraints value: anObject
]

{ #category : #accessing }
FamixSQLTable >> parentNamespace [
	"Relation named: #parentNamespace type: #FamixSQLNamespace opposite: #table"

	<generated>
	<container>
	^ parentNamespace
]

{ #category : #accessing }
FamixSQLTable >> parentNamespace: anObject [

	<generated>
	parentNamespace := anObject
]

{ #category : #navigation }
FamixSQLTable >> parentNamespaceGroup [
	<generated>
	<navigation: 'ParentNamespace'>
	^ MooseSpecializedGroup with: self parentNamespace
]
