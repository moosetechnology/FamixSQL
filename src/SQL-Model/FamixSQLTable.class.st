Class {
	#name : #FamixSQLTable,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLAbstractType + FamixSQLTColumnsContainer',
	#classTraits : 'FamixSQLAbstractType classTrait + FamixSQLTColumnsContainer classTrait',
	#instVars : [
		'#name => FMProperty',
		'#schema => FMOne type: #FamixSQLSchema opposite: #tables',
		'#constraints => FMMany type: #FamixSQLConstraint opposite: #table'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLTable class >> annotation [

	<FMClass: #Table super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^self
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
FamixSQLTable >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
FamixSQLTable >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
FamixSQLTable >> schema [
	"Relation named: #schema type: #FamixSQLSchema opposite: #tables"

	<generated>
	^ schema
]

{ #category : #accessing }
FamixSQLTable >> schema: anObject [

	<generated>
	schema := anObject
]
