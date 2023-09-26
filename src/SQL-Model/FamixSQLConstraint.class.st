Class {
	#name : #FamixSQLConstraint,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixSQLTWithColumnReference',
	#classTraits : 'FamixSQLTWithColumnReference classTrait',
	#instVars : [
		'#name => FMProperty',
		'#table => FMOne type: #FamixSQLTable opposite: #constraints'
	],
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLConstraint class >> annotation [

	<FMClass: #Constraint super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FamixSQLConstraint >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
FamixSQLConstraint >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
FamixSQLConstraint >> table [
	"Relation named: #table type: #FamixSQLTable opposite: #constraints"

	<generated>
	<container>
	^ table
]

{ #category : #accessing }
FamixSQLConstraint >> table: anObject [

	<generated>
	table := anObject
]

{ #category : #navigation }
FamixSQLConstraint >> tableGroup [
	<generated>
	<navigation: 'Table'>
	^ MooseSpecializedGroup with: self table
]