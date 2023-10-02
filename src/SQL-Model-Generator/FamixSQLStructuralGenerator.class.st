Class {
	#name : #FamixSQLStructuralGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'table',
		'column',
		'constraint',
		'primaryKeyConstraint',
		'foreigneKeyConstraint',
		'columnReference',
		'checkConstraint',
		'tColumn',
		'type',
		'notNullConstraint',
		'uniqueConstraint',
		'tWithColumnReference',
		'namespace',
		'tableConstraint',
		'columnConstraint',
		'defaultConstraint',
		'tColumnReference',
		'tWithTypeReference',
		'tType',
		'tTypeReference',
		'typeReference',
		'tWithColumnContainerReference',
		'tColumnContainer',
		'tColumnContainerReference',
		'sqlStructuralEntity',
		'foreignColumnReference'
	],
	#category : #'SQL-Model-Generator'
}

{ #category : #accessing }
FamixSQLStructuralGenerator class >> packageName [

    ^ #'SQL-Model'
]

{ #category : #accessing }
FamixSQLStructuralGenerator class >> prefix [
	
	^ #'FamixSQL'
]

{ #category : #accessing }
FamixSQLStructuralGenerator class >> submetamodels [

	^ { FamixGenerator }
]

{ #category : #comments }
FamixSQLStructuralGenerator >> checkConstraintComment [
	^ 'I represent a CHECK constraint as defined in SQL standard.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> columnConstraintComment [
	^ 'I am an abstract class for constraints on Columns'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> columnReferenceComment [
	^ 'I am reference to a column in a table of the model.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> columnsContainerComment [
	^ 'I am an abstract super class for entities that contain columns. Two of my well-known subclasses are the table and the view.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> defaultConstraintComment [
	^ 'I represent a DEFAULT constraint on a column'
]

{ #category : #definition }
FamixSQLStructuralGenerator >> defineClassRelations [

	"Structural entities"
	namespace <>-* (table property: #parentNamespace).

	(table property: #constraints) -* tableConstraint.

	(foreignColumnReference property: #foreignKeyConstraint)
		source
		*- (foreigneKeyConstraint property: #foreignColumnReference).
		"should be a oneToOne relation, but breaks the generation of the meta-model"

	(foreignColumnReference property: #primaryKeyColumn)
		target
		*- (tColumn property: #incomingForeignKeyReferences).

]

{ #category : #definition }
FamixSQLStructuralGenerator >> defineClasses [

	super defineClasses.

	"Structural entities"
	sqlStructuralEntity := builder newClassNamed: #StructuralEntity comment: self structuralEntityComment.
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
	foreignColumnReference := builder newClassNamed: #ForeignColumnReference.
	typeReference := builder newClassNamed: #TypeReference comment: self typeReferenceComment. 
]

{ #category : #definition }
FamixSQLStructuralGenerator >> defineHierarchy [

	super defineHierarchy.

	"Structural entities"
	sqlStructuralEntity --|> #TNamedEntity.
	sqlStructuralEntity --|> #TEntityMetaLevelDependency.

	column --|> tColumn.
	column --|> sqlStructuralEntity.
	column --|> tWithTypeReference.
	
	namespace --|> sqlStructuralEntity.
	namespace --|> #TNamespace.

	"table --|> tAbstractType."
	table --|> tColumnContainer.
	table --|> sqlStructuralEntity.

	type --|> sqlStructuralEntity.
	type --|> tType.

	"Reference"
	columnReference --|> tColumnReference.
	tColumnReference --|> #TAssociation.
	typeReference --|> #TAssociation.
	typeReference --|> tTypeReference.

	"Constraint"
	constraint --|> sqlStructuralEntity.
	constraint --|> tWithColumnReference.
	columnConstraint --|> constraint.
	columnConstraint --|> tWithColumnReference.
	checkConstraint --|> tableConstraint.
	defaultConstraint --|> columnConstraint.
	foreigneKeyConstraint --|> tableConstraint.
	notNullConstraint --|> columnConstraint.
	primaryKeyConstraint --|> tableConstraint.
	tableConstraint --|> constraint.
	uniqueConstraint --|> tableConstraint.

]

{ #category : #definition }
FamixSQLStructuralGenerator >> defineProperties [

	super defineProperties.

	columnReference property: #isWildCardReference type: #Boolean
]

{ #category : #definition }
FamixSQLStructuralGenerator >> defineRelations [

	super defineRelations.

	self defineClassRelations.
	self defineTraitsRelations.

]

{ #category : #definition }
FamixSQLStructuralGenerator >> defineTraits [

	super defineTraits.

	tColumn := builder newTraitNamed: #TColumn.
	tColumnReference := builder newTraitNamed: #TColumnReference.
	tWithColumnReference := builder newTraitNamed: #TWithColumnReference.
	tColumnContainer := builder newTraitNamed: #TColumnContainer comment: self columnsContainerComment.
	tColumnContainerReference := builder newTraitNamed: #TColumnContainerReference.
	tWithColumnContainerReference := builder newTraitNamed: #TWithColumnContainerReference.

	tType := builder newTraitNamed: #TType.
	tTypeReference := builder newTraitNamed: #TTypeReference. 
	tWithTypeReference := builder newTraitNamed: #TWithTypeReference.
]

{ #category : #definition }
FamixSQLStructuralGenerator >> defineTraitsRelations [

	(tColumnReference property: #referencer)
		source
		*- (tWithColumnReference property: #columnReferences).

	(tColumnReference property: #column)
		target
		*- (tColumn property: #incomingReferences).

	(tColumnContainer property: #columns)
		<>-* (tColumn property: #columnsContainer).

	(tColumnContainerReference property: #referencer)
		source
		*- (tWithColumnContainerReference property: #references).

	(tColumnContainerReference property: #columnContainer)
		target
		*- (tColumnContainer property: #incomingReferences).

	(tTypeReference property: #referencer)
		source
		*- (tWithTypeReference property: #typeReferences).

	(tTypeReference property: #type)
		target
		*- (tType property: #incomingReferences).

]

{ #category : #comments }
FamixSQLStructuralGenerator >> namespaceComment [
	^ 'I am a namespace. I hold entities to define a name scope where name duplicates are forbidden.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> namespaceReferenceComment [
	^ 'I model a reference made to a namespace from source code.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> nullConstraintComment [
	^ 'I represent a NOT NULL constraint as defined in SQL standard.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> queryComment [
	^ 'I represent a CRUD query'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> queryContainerComment [
	^ 'I am an abstract super class for behavioural entities that can contain queries in their source code.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> referenceComment [
	^ 'I am an abstract object that represent a reference made to another entity in the source code a behavioural entity.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> structuralEntityComment [
	^ 'I am an abstract superclass for structural entities. A structural entity is an entity that defines how data are structured by the database.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> tableConstraintComment [
	^ 'I am an abstract class for constraints on Tables'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> tableReferenceComment [
	^ 'I am a reference to a table.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> typeComment [
	^ 'I represent a Type in the database. I can be used for a column, a local variable, a parameter, etc...'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> typeReferenceComment [
	^ 'I am reference to a type of the model.'
]

{ #category : #comments }
FamixSQLStructuralGenerator >> uniqueConstraintComment [
	^ 'I represent a UNIQUE constraint as defined in SQL standard.'
]
