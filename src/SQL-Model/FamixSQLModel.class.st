Class {
	#name : 'FamixSQLModel',
	#superclass : 'MooseModel',
	#traits : 'FamixSQLTEntityCreator',
	#classTraits : 'FamixSQLTEntityCreator classTrait',
	#instVars : [
		'importer'
	],
	#category : 'SQL-Model-Model',
	#package : 'SQL-Model',
	#tag : 'Model'
}

{ #category : 'accessing' }
FamixSQLModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : 'meta' }
FamixSQLModel class >> annotation [
	<FMClass: #FamixSQLModel super: #MooseModel>
	<package: #'SQL-Model'>
	<generated>
]

{ #category : 'testing' }
FamixSQLModel class >> canBeImportedFromFile [
	<generated>
	^true
]

{ #category : 'accessing' }
FamixSQLModel class >> importingContextClass [

	<generated>
	^ FamixSQLImportingContext
]

{ #category : 'accessing' }
FamixSQLModel >> importer [
	"the importer to use to import or explore additionnal data live"

	^ importer
]

{ #category : 'accessing' }
FamixSQLModel >> importer: anObject [

	importer := anObject
]
