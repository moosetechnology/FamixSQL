Class {
	#name : #SQLMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'schema',
		'table',
		'column',
		'constraint',
		'primaryKeyConstraint',
		'foreigneKeyConstraint',
		'columnReference',
		'twithColumnReference',
		'checkConstraint',
		'tWithTableReference',
		'tWithNamespaceReference',
		'reference',
		'tableReference',
		'tAbstractType',
		'tColumnsContainer',
		'tColumn',
		'namespaceReference'
	],
	#category : #'SQL-Model-Generator'
}

{ #category : #accessing }
SQLMetamodelGenerator class >> packageName [

    ^ #'SQL-Model'
]

{ #category : #accessing }
SQLMetamodelGenerator class >> prefix [
	
	^ #'FamixSQL'
]

{ #category : #accessing }
SQLMetamodelGenerator class >> submetamodels [

	^ { FamixGenerator }
]

{ #category : #comments }
SQLMetamodelGenerator >> checkConstraintComment [
	^ 'I represent a CHECK constraint as defined in SQL standard.'
]

{ #category : #comments }
SQLMetamodelGenerator >> columnReferenceComment [
	^ 'I am reference to a column in a table of the model.'
]

{ #category : #comments }
SQLMetamodelGenerator >> columnsContainerComment [
	^ 'I am an abstract super class for entities that contain columns. Two of my well-known subclasses are the table and the view.'
]

{ #category : #definition }
SQLMetamodelGenerator >> defineClasses [

	super defineClasses.
	schema := builder newClassNamed: #Schema.
	table := builder newClassNamed: #Table.
	table withGroup.
	column := builder newClassNamed: #Column.
	constraint := builder newClassNamed: #Constraint.
	primaryKeyConstraint := builder newClassNamed: #PrimaryKeyConstraint.
	foreigneKeyConstraint := builder newClassNamed: #ForeignKeyConstraint.
	checkConstraint := builder
		                   newClassNamed: #CheckConstraint
		                   comment: self checkConstraintComment.
	reference := builder
		             newClassNamed: #Reference
		             comment: self referenceComment.

	"Concrete reference entities."
	tableReference := builder
		                  newClassNamed: #TableReference
		                  comment: self tableReferenceComment.
	columnReference := builder
		                   newClassNamed: #ColumnReference
		                   comment: self columnReferenceComment.
	namespaceReference := builder
		                      newClassNamed: #NamespaceReference
		                      comment: self namespaceReferenceComment
]

{ #category : #definition }
SQLMetamodelGenerator >> defineHierarchy [

	super defineHierarchy.
	primaryKeyConstraint --|> constraint.
	foreigneKeyConstraint --|> constraint.
	constraint --|> twithColumnReference.

	reference --|> #TAssociation.
	tableReference --|> reference.
	columnReference --|> reference.
	namespaceReference --|> reference.
	table --|> tAbstractType.
	table --|> tColumnsContainer.

	column --|> tColumn
]

{ #category : #definition }
SQLMetamodelGenerator >> defineProperties [

	super defineProperties.
	schema property: #name type: #String.
	table property: #name type: #String.
	column property: #name type: #String.
	constraint property: #name type: #String.
]

{ #category : #definition }
SQLMetamodelGenerator >> defineRelations [

	super defineRelations.
	(schema property: #tables) -* (table property: #schema).
	(tColumnsContainer property: #columns)
	<>-* (tColumn property: #columnsContainer).
	
	(twithColumnReference property: #columnReferences) target
	-* (columnReference property: #source) source.
	
	(columnReference property: #column) target *- (column property: #references).
	
	(foreigneKeyConstraint property: #foreignKeyColumnReferences) target
	-* (columnReference property: #foreignKeySource) source.
	(table property: #constraints) <>-* (constraint property: #table).
	(namespaceReference property: #namespace) target
	*- (schema property: #references)
]

{ #category : #definition }
SQLMetamodelGenerator >> defineTraits [

	super defineTraits.
	twithColumnReference := builder newTraitNamed: #TWithColumnReference.
	tWithTableReference := builder newTraitNamed: #TWithTableReference.
	tWithNamespaceReference := builder newTraitNamed:
		                           #TWithNamespaceReference.
	tAbstractType := builder newTraitNamed: #AbstractType.
	tColumnsContainer := builder
		                     newTraitNamed: #TColumnsContainer
		                     comment: self columnsContainerComment.
	tColumn := builder newTraitNamed: #TColumn.
]

{ #category : #comments }
SQLMetamodelGenerator >> namespaceReferenceComment [
	^ 'I model a reference made to a namespace from source code.'
]

{ #category : #comments }
SQLMetamodelGenerator >> referenceComment [
	^ 'I am an abstract object that represent a reference made to another entity in the source code a behavioural entity.'
]

{ #category : #comments }
SQLMetamodelGenerator >> tableReferenceComment [
	^ 'I am a reference to a table.'
]
