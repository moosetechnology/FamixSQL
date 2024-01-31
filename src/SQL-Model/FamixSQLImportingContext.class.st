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
FamixSQLImportingContext >> importBehaviouralEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #BehaviouralEntity)
]

{ #category : #importing }
FamixSQLImportingContext >> importCRUDQuery [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #CRUDQuery)
]

{ #category : #importing }
FamixSQLImportingContext >> importCheckConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #CheckConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Clause)
]

{ #category : #importing }
FamixSQLImportingContext >> importColumn [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Column)
]

{ #category : #importing }
FamixSQLImportingContext >> importColumnConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ColumnConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importColumnContainerReference [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ColumnContainerReference)
]

{ #category : #importing }
FamixSQLImportingContext >> importColumnReference [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #ColumnReference)
]

{ #category : #importing }
FamixSQLImportingContext >> importConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Constraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importDefaultConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #DefaultConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importDeleteQuery [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #DeleteQuery)
]

{ #category : #importing }
FamixSQLImportingContext >> importDerivedTable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #DerivedTable)
]

{ #category : #importing }
FamixSQLImportingContext >> importExceptClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ExceptClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importForeignColumnReference [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ForeignColumnReference)
]

{ #category : #importing }
FamixSQLImportingContext >> importForeignKeyConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ForeignKeyConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importFromClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #FromClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importGroupByClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #GroupByClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importHavingClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #HavingClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importInsertQuery [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #InsertQuery)
]

{ #category : #importing }
FamixSQLImportingContext >> importIntersectClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #IntersectClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importIntoClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #IntoClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importJoinClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #JoinClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importLimitClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #LimitClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importLocalVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #LocalVariable)
]

{ #category : #importing }
FamixSQLImportingContext >> importNamespace [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Namespace)
]

{ #category : #importing }
FamixSQLImportingContext >> importNewLocalVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #NewLocalVariable)
]

{ #category : #importing }
FamixSQLImportingContext >> importNotNullConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #NotNullConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importOldLocalVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #OldLocalVariable)
]

{ #category : #importing }
FamixSQLImportingContext >> importOnConflictClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #OnConflictClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importOrderByClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #OrderByClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importParameter [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Parameter)
]

{ #category : #importing }
FamixSQLImportingContext >> importPrimaryKeyConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PrimaryKeyConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importReturningClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ReturningClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importSelectClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SelectClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importSelectQuery [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SelectQuery)
]

{ #category : #importing }
FamixSQLImportingContext >> importSetClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SetClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importStoredProcedure [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #StoredProcedure)
]

{ #category : #importing }
FamixSQLImportingContext >> importStructuralEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #StructuralEntity)
]

{ #category : #importing }
FamixSQLImportingContext >> importTable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Table)
]

{ #category : #importing }
FamixSQLImportingContext >> importTableConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #TableConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importTrigger [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Trigger)
]

{ #category : #importing }
FamixSQLImportingContext >> importTriggerStoredProcedure [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #TriggerStoredProcedure)
]

{ #category : #importing }
FamixSQLImportingContext >> importType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Type)
]

{ #category : #importing }
FamixSQLImportingContext >> importTypeReference [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #TypeReference)
]

{ #category : #importing }
FamixSQLImportingContext >> importUnionClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #UnionClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importUniqueConstraint [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #UniqueConstraint)
]

{ #category : #importing }
FamixSQLImportingContext >> importUpdateQuery [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #UpdateQuery)
]

{ #category : #importing }
FamixSQLImportingContext >> importUsingClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #UsingClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importValuesClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ValuesClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importValuesQuery [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ValuesQuery)
]

{ #category : #importing }
FamixSQLImportingContext >> importView [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #View)
]

{ #category : #importing }
FamixSQLImportingContext >> importWhereClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #WhereClause)
]

{ #category : #importing }
FamixSQLImportingContext >> importWithClause [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #WithClause)
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportBehaviouralEntity [

	<generated>
	^ self shouldImport: #BehaviouralEntity
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportCRUDQuery [

	<generated>
	^ self shouldImport: #CRUDQuery
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportCheckConstraint [

	<generated>
	^ self shouldImport: #CheckConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportClause [

	<generated>
	^ self shouldImport: #Clause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportColumn [

	<generated>
	^ self shouldImport: #Column
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportColumnConstraint [

	<generated>
	^ self shouldImport: #ColumnConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportColumnContainerReference [

	<generated>
	^ self shouldImport: #ColumnContainerReference
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
FamixSQLImportingContext >> shouldImportDefaultConstraint [

	<generated>
	^ self shouldImport: #DefaultConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportDeleteQuery [

	<generated>
	^ self shouldImport: #DeleteQuery
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportDerivedTable [

	<generated>
	^ self shouldImport: #DerivedTable
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportExceptClause [

	<generated>
	^ self shouldImport: #ExceptClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportForeignColumnReference [

	<generated>
	^ self shouldImport: #ForeignColumnReference
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportForeignKeyConstraint [

	<generated>
	^ self shouldImport: #ForeignKeyConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportFromClause [

	<generated>
	^ self shouldImport: #FromClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportGroupByClause [

	<generated>
	^ self shouldImport: #GroupByClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportHavingClause [

	<generated>
	^ self shouldImport: #HavingClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportInsertQuery [

	<generated>
	^ self shouldImport: #InsertQuery
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportIntersectClause [

	<generated>
	^ self shouldImport: #IntersectClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportIntoClause [

	<generated>
	^ self shouldImport: #IntoClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportJoinClause [

	<generated>
	^ self shouldImport: #JoinClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportLimitClause [

	<generated>
	^ self shouldImport: #LimitClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportLocalVariable [

	<generated>
	^ self shouldImport: #LocalVariable
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportNamespace [

	<generated>
	^ self shouldImport: #Namespace
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportNewLocalVariable [

	<generated>
	^ self shouldImport: #NewLocalVariable
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportNotNullConstraint [

	<generated>
	^ self shouldImport: #NotNullConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportOldLocalVariable [

	<generated>
	^ self shouldImport: #OldLocalVariable
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportOnConflictClause [

	<generated>
	^ self shouldImport: #OnConflictClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportOrderByClause [

	<generated>
	^ self shouldImport: #OrderByClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportParameter [

	<generated>
	^ self shouldImport: #Parameter
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportPrimaryKeyConstraint [

	<generated>
	^ self shouldImport: #PrimaryKeyConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportReturningClause [

	<generated>
	^ self shouldImport: #ReturningClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportSelectClause [

	<generated>
	^ self shouldImport: #SelectClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportSelectQuery [

	<generated>
	^ self shouldImport: #SelectQuery
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportSetClause [

	<generated>
	^ self shouldImport: #SetClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportStoredProcedure [

	<generated>
	^ self shouldImport: #StoredProcedure
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportStructuralEntity [

	<generated>
	^ self shouldImport: #StructuralEntity
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportTable [

	<generated>
	^ self shouldImport: #Table
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportTableConstraint [

	<generated>
	^ self shouldImport: #TableConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportTrigger [

	<generated>
	^ self shouldImport: #Trigger
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportTriggerStoredProcedure [

	<generated>
	^ self shouldImport: #TriggerStoredProcedure
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportType [

	<generated>
	^ self shouldImport: #Type
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportTypeReference [

	<generated>
	^ self shouldImport: #TypeReference
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportUnionClause [

	<generated>
	^ self shouldImport: #UnionClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportUniqueConstraint [

	<generated>
	^ self shouldImport: #UniqueConstraint
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportUpdateQuery [

	<generated>
	^ self shouldImport: #UpdateQuery
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportUsingClause [

	<generated>
	^ self shouldImport: #UsingClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportValuesClause [

	<generated>
	^ self shouldImport: #ValuesClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportValuesQuery [

	<generated>
	^ self shouldImport: #ValuesQuery
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportView [

	<generated>
	^ self shouldImport: #View
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportWhereClause [

	<generated>
	^ self shouldImport: #WhereClause
]

{ #category : #testing }
FamixSQLImportingContext >> shouldImportWithClause [

	<generated>
	^ self shouldImport: #WithClause
]
