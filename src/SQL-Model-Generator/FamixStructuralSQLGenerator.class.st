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
		'tAbstractType',
		'tColumnsContainer',
		'tColumn',
		'structuralEntity',
		'type',
		'notNullConstraint',
		'uniqueConstraint',
		'tQueryContainer',
		'tWithColumnReference',
		'namespace',
		'tableConstraint',
		'columnConstraint',
		'defaultConstraint',
		'tQuery',
		'tColumnReference'
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
	namespace <>-* (table property: #parentNamespace).

	column - type.

	(table property: #constraints) -* tableConstraint.

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
	columnReference := builder newClassNamed: #ColumnReference comment: self columnReferenceComment.
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

	"Reference"
	columnReference --|> tColumnReference.
	tColumnReference --|> #TAssociation.

	"Constraint"
	constraint --|> structuralEntity.
	constraint --|> tWithColumnReference.
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

	tColumn := builder newTraitNamed: #TColumn.
	tColumnsContainer := builder newTraitNamed: #TColumnsContainer comment: self columnsContainerComment.
	tColumnReference := builder newTraitNamed: #TColumnReference.
	tWithColumnReference := builder newTraitNamed: #TWithColumnReference.
	tQuery := builder newTraitNamed: #TQuery comment: self queryComment.
	tQueryContainer := builder newTraitNamed: #TQueryContainer comment: self queryContainerComment.
]

{ #category : #definition }
FamixStructuralSQLGenerator >> defineTraitsRelations [

	(tColumnsContainer property: #columns)
		<>-* (tColumn property: #columnsContainer).

	(tColumnReference property: #referencer)
		source
		*- (tWithColumnReference property: #columnReferences).

	(tColumnReference property: #column)
		target
		*- (tColumn property: #incomingReferences).

	(tQueryContainer property: #queries)
		<>-* (tQuery property: #containerEntity).

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
FamixStructuralSQLGenerator >> queryComment [
	^ 'I represent a CRUD query'
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
