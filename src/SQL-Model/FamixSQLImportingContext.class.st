"
This class is used to choose the entities to be imported when loading a model from file.
It is used by `MiImportingContextPresenter` in a `MiImportModelFromFileDialog` to import a FamixSQLModel.
"
Class {
	#name : #FamixSQLImportingContext,
	#superclass : #FamixImportingContext,
	#category : #'SQL-Model-Import'
}

{ #category : #accessing }
FamixSQLImportingContext class >> importedMetamodel [

	<generated>
	^ FamixSQLModel metamodel
]

{ #category : #importing }
FamixSQLImportingContext >> importCheckConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #CheckConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importColumn [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Column)
]

{ #category : #importing }
FamixSQLImportingContext >> importColumnReference [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ColumnReference)
]

{ #category : #importing }
FamixSQLImportingContext >> importConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Constraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importForeignKeyConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ForeignKeyConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importNamespaceReference [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #NamespaceReference)
]

{ #category : #importing }
FamixSQLImportingContext >> importPrimaryKeyConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PrimaryKeyConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importReference [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Reference)
]

{ #category : #importing }
FamixSQLImportingContext >> importSchema [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Schema)
]

{ #category : #importing }
FamixSQLImportingContext >> importTable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Table)
]

{ #category : #importing }
FamixSQLImportingContext >> importTableReference [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #TableReference)
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportCheckConstraint [

	<generated>
	^ self shouldImport: #CheckConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportColumn [

	<generated>
	^ self shouldImport: #Column
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportColumnReference [

	<generated>
	^ self shouldImport: #ColumnReference
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportConstraint [

	<generated>
	^ self shouldImport: #Constraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportForeignKeyConstraint [

	<generated>
	^ self shouldImport: #ForeignKeyConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportNamespaceReference [

	<generated>
	^ self shouldImport: #NamespaceReference
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportPrimaryKeyConstraint [

	<generated>
	^ self shouldImport: #PrimaryKeyConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportReference [

	<generated>
	^ self shouldImport: #Reference
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportSchema [

	<generated>
	^ self shouldImport: #Schema
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportTable [

	<generated>
	^ self shouldImport: #Table
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportTableReference [

	<generated>
	^ self shouldImport: #TableReference
]
