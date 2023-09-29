Class {
	#name : #FamixStructuralSQLGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'table',
		'column',
		'constraint',
		'primaryKeyConstraint',
		'foreigneKeyConstraint',
		'columnReference',
		'checkConstraint',
		'tWithTableReference',
		'tWithNamespaceReference',
		'reference',
		'tableReference',
		'tAbstractType',
		'tColumnsContainer',
		'tColumn',
		'namespaceReference',
		'structuralEntity',
		'type',
		'notNullConstraint',
		'uniqueConstraint',
		'typeReference',
		'tQueryContainer',
		'tWithColumnReference',
		'namespace',
		'tableConstraint',
		'columnConstraint',
		'defaultConstraint'
	],
	#category : #'SQL-Model-Generator'
}

{ #category : #accessing }
FamixStructuralSQLGenerator class >> packageName [

    ^ #'SQL-Model'
]

{ #category : #accessing }
FamixStructuralSQLGenerator class >> prefix [
	
	^ #'FamixSQL'
]

{ #category : #accessing }
FamixStructuralSQLGenerator class >> submetamodels [

	^ { FamixGenerator }
]

{ #category : #comments }
FamixStructuralSQLGenerator >> checkConstraintComment [
	^ 'I represent a CHECK constraint as defined in SQL standard.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> columnConstraintComment [
	^ 'I am an abstract class for constraints on Columns'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> columnReferenceComment [
	^ 'I am reference to a column in a table of the model.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> columnsContainerComment [
	^ 'I am an abstract super class for entities that contain columns. Two of my well-known subclasses are the table and the view.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> defaultConstraintComment [
	^ 'I represent a DEFAULT constraint on a column'
]

{ #category : #definition }
FamixStructuralSQLGenerator >> defineClassRelations [

	"Structural entities"
	namespace -* table.
	(tColumnsContainer property: #columns)
		<>-* (tColumn property: #columnsContainer).
	column *- type.
	(table property: #constraints)
		<>-* (tableConstraint property: #table).

	"References"
	(tWithColumnReference property: #columnReferences) target
		-* (columnReference property: #source) source.
	
	columnReference target *- (column property: #references).

	"Constraints"
	(foreigneKeyConstraint property: #foreignKeyColumnReferences) target
		-* (columnReference property: #foreignKeySource) source.
	(table property: #constraints)
		<>-* (constraint property: #table).
	(namespaceReference property: #namespace) target
		*- (namespace property: #references)
]

{ #category : #definition }
FamixStructuralSQLGenerator >> defineClassTraits [

	"Structural entities"
	namespace -* table.
	(tColumnsContainer property: #columns)
		<>-* (tColumn property: #columnsContainer).
	column *- type.
	(table property: #constraints)
		<>-* (tableConstraint property: #table).

	"References"
	(tWithColumnReference property: #columnReferences) target
		-* (columnReference property: #source) source.
	
	columnReference target *- (column property: #references).

	"Constraints"
	(foreigneKeyConstraint property: #foreignKeyColumnReferences) target
		-* (columnReference property: #foreignKeySource) source.
	(table property: #constraints)
		<>-* (constraint property: #table).
	(namespaceReference property: #namespace) target
		*- (namespace property: #references)
]

{ #category : #definition }
FamixStructuralSQLGenerator >> defineClasses [

	super defineClasses.

	"Structural entities"
	structuralEntity := builder newClassNamed: #StructuralEntity comment: self structuralEntityComment.
	column := builder newClassNamed: #Column.
	namespace := builder newClassNamed: #Namespace comment: self namespaceComment.
	table := builder newClassNamed: #Table.
	table withGroup.
	type := builder newClassNamed: #Type comment: self typeComment.

	"Constraints"
	constraint := builder newClassNamed: #Constraint.
	checkConstraint := builder newClassNamed: #CheckConstraint comment: self checkConstraintComment.
	columnConstraint := builder newClassNamed: #ColumnConstraint comment: self columnConstraintComment.
	defaultConstraint := builder newClassNamed: #DefaultConstraint comment: self defaultConstraintComment.
	foreigneKeyConstraint := builder newClassNamed: #ForeignKeyConstraint.
	notNullConstraint := builder newClassNamed: #NotNullConstraint comment: self nullConstraintComment.
	primaryKeyConstraint := builder newClassNamed: #PrimaryKeyConstraint.
	tableConstraint := builder newClassNamed: #TableConstraint comment: self tableConstraintComment.
	uniqueConstraint := builder newClassNamed: #UniqueConstraint comment: self uniqueConstraintComment.

	"References"
	reference := builder newClassNamed: #Reference comment: self referenceComment.
	columnReference := builder newClassNamed: #ColumnReference comment: self columnReferenceComment.
	namespaceReference := builder newClassNamed: #NamespaceReference comment: self namespaceReferenceComment.
	tableReference := builder newClassNamed: #TableReference comment: self tableReferenceComment.
	typeReference := builder newClassNamed: #TypeReference comment: self typeReferenceComment.

]

{ #category : #definition }
FamixStructuralSQLGenerator >> defineHierarchy [

	super defineHierarchy.

	"Structural entities"
	structuralEntity --|> #TNamedEntity.
	column --|> tColumn.
	namespace --|> structuralEntity.
	namespace --|> #TNamespace.
	"table --|> tAbstractType."
	table --|> tColumnsContainer.
	table --|> structuralEntity.
	
	column --|> structuralEntity.
	column --|> tColumn.
	
	type --|> structuralEntity.
	type --|> tAbstractType.

	"Reference"
	reference --|> #TAssociation.
	"reference --|> #TArgument."
	columnReference --|> reference.
	namespaceReference --|> reference.
	tableReference --|> reference.
	typeReference --|> reference.

	"Constraint"
	columnConstraint --|> constraint.
	columnConstraint --|> tWithColumnReference.
	checkConstraint --|> tableConstraint.
	defaultConstraint --|> columnConstraint.
	foreigneKeyConstraint --|> tableConstraint.
	notNullConstraint --|> columnConstraint.
	primaryKeyConstraint --|> tableConstraint.
	tableConstraint --|> constraint.
	"tableConstraint --|> tWithColumnReference."
	uniqueConstraint --|> tableConstraint.

]

{ #category : #definition }
FamixStructuralSQLGenerator >> defineProperties [

	super defineProperties.

	columnReference property: #isWildCardReference type: #Boolean
]

{ #category : #definition }
FamixStructuralSQLGenerator >> defineRelations [

	super defineRelations.

	self defineClassRelations.
	self defineTraitsRelations.

]

{ #category : #definition }
FamixStructuralSQLGenerator >> defineTraits [

	super defineTraits.

	tAbstractType := builder newTraitNamed: #TAbstractType.
	tColumn := builder newTraitNamed: #TColumn.
	tColumnsContainer := builder newTraitNamed: #TColumnsContainer comment: self columnsContainerComment.
	tWithColumnReference := builder newTraitNamed: #TWithColumnReference.
	tWithNamespaceReference := builder newTraitNamed: #TWithNamespaceReference.
	tQueryContainer := builder newTraitNamed: #TQueryContainer comment: self queryContainerComment.
	tWithTableReference := builder newTraitNamed: #TWithTableReference.
]

{ #category : #comments }
FamixStructuralSQLGenerator >> namespaceComment [
	^ 'I am a namespace. I hold entities to define a name scope where name duplicates are forbidden.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> namespaceReferenceComment [
	^ 'I model a reference made to a namespace from source code.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> nullConstraintComment [
	^ 'I represent a NOT NULL constraint as defined in SQL standard.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> queryContainerComment [
	^ 'I am an abstract super class for behavioural entities that can contain queries in their source code.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> referenceComment [
	^ 'I am an abstract object that represent a reference made to another entity in the source code a behavioural entity.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> structuralEntityComment [
	^ 'I am an abstract superclass for structural entities. A structural entity is an entity that defines how data are structured by the database.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> tableConstraintComment [
	^ 'I am an abstract class for constraints on Tables'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> tableReferenceComment [
	^ 'I am a reference to a table.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> typeComment [
	^ 'I represent a Type in the database. I can be used for a column, a local variable, a parameter, etc...'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> typeReferenceComment [
	^ 'I am reference to a type of the model.'
]

{ #category : #comments }
FamixStructuralSQLGenerator >> uniqueConstraintComment [
	^ 'I represent a UNIQUE constraint as defined in SQL standard.'
]
