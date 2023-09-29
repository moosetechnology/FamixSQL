Class {
	#name : #FamixSQLTable,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixSQLTAbstractType + FamixSQLTColumnsContainer',
	#classTraits : 'FamixSQLTAbstractType classTrait + FamixSQLTColumnsContainer classTrait',
	#instVars : [
		'#constraints => FMMany type: #FamixSQLConstraint opposite: #table',
		'#namespace => FMOne type: #FamixSQLNamespace opposite: #tables'
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
	"Relation named: #constraints type: #FamixSQLConstraint opposite: #table"

	<generated>
	<derived>
	^ constraints
]

{ #category : #accessing }
FamixSQLTable >> constraints: anObject [

	<generated>
	constraints value: anObject
]

{ #category : #navigation }
FamixSQLTable >> constraintsGroup [
	<generated>
	<navigation: 'Constraints'>
	^ MooseSpecializedGroup withAll: self constraints asSet
]

{ #category : #accessing }
FamixSQLTable >> namespace [
	"Relation named: #namespace type: #FamixSQLNamespace opposite: #tables"

	<generated>
	^ namespace
]

{ #category : #accessing }
FamixSQLTable >> namespace: anObject [

	<generated>
	namespace := anObject
]
