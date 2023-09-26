"
A FamixSQLImporterTest is a test class for testing the behavior of FamixSQLImporter
"
Class {
	#name : #FamixSQLImporterTest,
	#superclass : #TestCase,
	#instVars : [
		'importer'
	],
	#category : #'SQL-Model-Importer-Tests'
}

{ #category : #running }
FamixSQLImporterTest >> setUp [
	super setUp.
	
   importer := FamixSQLCSVImporter new.
	importer source:  {  }.
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreate2SameSchemaIsInModel [
	importer ensureCreateSchema: 'dbo'.
	importer ensureCreateSchema: 'dbo'.
	self assert: (importer model allWithType: FamixSQLSchema) size equals: 1
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreate2SameTableIsInModel [

	importer ensureCreateTable:  'dbo'.
	importer ensureCreateTable: 'dbo'.
	self
		assert: (importer model allWithType: FamixSQLTable ) size
		equals: 1
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreate2SameTableIsInModel2 [


	self
		assert: (importer ensureCreateTable: 'dbo')
		equals: (importer ensureCreateTable: 'dbo')

		
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreate2SchemaIsInModel [
	importer ensureCreateSchema: 'dbo'.
	importer ensureCreateSchema: 'dbo2'.
	self assert: (importer model allWithType: FamixSQLSchema) size equals: 2
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreate2TableIsInModel [

	importer ensureCreateTable: 'dbo'.
	importer ensureCreateTable: 'dbo2'.
	self
		assert: (importer model allWithType: FamixSQLTable) size
		equals: 2
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreateSchema [

	self assert: (importer ensureCreateSchema: 'dbo' ) class equals: FamixSQLSchema 
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreateSchemaIsInModel [
	importer ensureCreateSchema: 'dbo'.
	self assert: (importer model allWithType: FamixSQLSchema) size equals: 1
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreateSchemaName [

	self assert: (importer ensureCreateSchema: 'dbo' ) name equals: 'dbo'
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreateTable [

	self
		assert: (importer ensureCreateTable: 'exampleTableName') class
		equals: FamixSQLTable 
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreateTableIsInModel [

	importer ensureCreateTable: 'exampleTableName'.
	self
		assert: (importer model allWithType: FamixSQLTable) size
		equals: 1
]

{ #category : #test }
FamixSQLImporterTest >> testEnsureCreateTableName [

	self assert: (importer ensureCreateTable: 'exampleTableName') name equals: 'exampleTableName'
]

{ #category : #test }
FamixSQLImporterTest >> testImport [

	self assert: importer import class equals: FamixSQLModel 
]
