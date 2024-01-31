"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : #FamixSQLTEntityCreator,
	#category : #'SQL-Model-Model'
}

{ #category : #meta }
FamixSQLTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newBehaviouralEntity [

	<generated>
	^ self add: FamixSQLBehaviouralEntity new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newBehaviouralEntityNamed: aName [

	<generated>
	^ self add: (FamixSQLBehaviouralEntity named: aName)
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newCRUDQuery [

	<generated>
	^ self add: FamixSQLCRUDQuery new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newCheckConstraint [

	<generated>
	^ self add: FamixSQLCheckConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newClause [

	<generated>
	^ self add: FamixSQLClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newColumn [

	<generated>
	^ self add: FamixSQLColumn new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newColumnConstraint [

	<generated>
	^ self add: FamixSQLColumnConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newColumnContainerReference [

	<generated>
	^ self add: FamixSQLColumnContainerReference new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newColumnReference [

	<generated>
	^ self add: FamixSQLColumnReference new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newConstraint [

	<generated>
	^ self add: FamixSQLConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newDefaultConstraint [

	<generated>
	^ self add: FamixSQLDefaultConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newDeleteQuery [

	<generated>
	^ self add: FamixSQLDeleteQuery new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newDerivedTable [

	<generated>
	^ self add: FamixSQLDerivedTable new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newExceptClause [

	<generated>
	^ self add: FamixSQLExceptClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newForeignColumnReference [

	<generated>
	^ self add: FamixSQLForeignColumnReference new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newForeignKeyConstraint [

	<generated>
	^ self add: FamixSQLForeignKeyConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newFromClause [

	<generated>
	^ self add: FamixSQLFromClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newGroupByClause [

	<generated>
	^ self add: FamixSQLGroupByClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newHavingClause [

	<generated>
	^ self add: FamixSQLHavingClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newInsertQuery [

	<generated>
	^ self add: FamixSQLInsertQuery new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newIntersectClause [

	<generated>
	^ self add: FamixSQLIntersectClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newIntoClause [

	<generated>
	^ self add: FamixSQLIntoClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newJoinClause [

	<generated>
	^ self add: FamixSQLJoinClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newLimitClause [

	<generated>
	^ self add: FamixSQLLimitClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newLocalVariable [

	<generated>
	^ self add: FamixSQLLocalVariable new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newLocalVariableNamed: aName [

	<generated>
	^ self add: (FamixSQLLocalVariable named: aName)
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newNamespace [

	<generated>
	^ self add: FamixSQLNamespace new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newNamespaceNamed: aName [

	<generated>
	^ self add: (FamixSQLNamespace named: aName)
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newNewLocalVariable [

	<generated>
	^ self add: FamixSQLNewLocalVariable new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newNotNullConstraint [

	<generated>
	^ self add: FamixSQLNotNullConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newOldLocalVariable [

	<generated>
	^ self add: FamixSQLOldLocalVariable new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newOnConflictClause [

	<generated>
	^ self add: FamixSQLOnConflictClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newOrderByClause [

	<generated>
	^ self add: FamixSQLOrderByClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newParameter [

	<generated>
	^ self add: FamixSQLParameter new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newParameterNamed: aName [

	<generated>
	^ self add: (FamixSQLParameter named: aName)
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newPrimaryKeyConstraint [

	<generated>
	^ self add: FamixSQLPrimaryKeyConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newReturningClause [

	<generated>
	^ self add: FamixSQLReturningClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newSelectClause [

	<generated>
	^ self add: FamixSQLSelectClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newSelectQuery [

	<generated>
	^ self add: FamixSQLSelectQuery new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newSetClause [

	<generated>
	^ self add: FamixSQLSetClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newStoredProcedure [

	<generated>
	^ self add: FamixSQLStoredProcedure new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newStoredProcedureNamed: aName [

	<generated>
	^ self add: (FamixSQLStoredProcedure named: aName)
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newStructuralEntity [

	<generated>
	^ self add: FamixSQLStructuralEntity new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newStructuralEntityNamed: aName [

	<generated>
	^ self add: (FamixSQLStructuralEntity named: aName)
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newTable [

	<generated>
	^ self add: FamixSQLTable new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newTableConstraint [

	<generated>
	^ self add: FamixSQLTableConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newTrigger [

	<generated>
	^ self add: FamixSQLTrigger new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newTriggerNamed: aName [

	<generated>
	^ self add: (FamixSQLTrigger named: aName)
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newTriggerStoredProcedure [

	<generated>
	^ self add: FamixSQLTriggerStoredProcedure new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newType [

	<generated>
	^ self add: FamixSQLType new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newTypeReference [

	<generated>
	^ self add: FamixSQLTypeReference new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newUnionClause [

	<generated>
	^ self add: FamixSQLUnionClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newUniqueConstraint [

	<generated>
	^ self add: FamixSQLUniqueConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newUpdateQuery [

	<generated>
	^ self add: FamixSQLUpdateQuery new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newUsingClause [

	<generated>
	^ self add: FamixSQLUsingClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newValuesClause [

	<generated>
	^ self add: FamixSQLValuesClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newValuesQuery [

	<generated>
	^ self add: FamixSQLValuesQuery new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newView [

	<generated>
	^ self add: FamixSQLView new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newViewNamed: aName [

	<generated>
	^ self add: (FamixSQLView named: aName)
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newWhereClause [

	<generated>
	^ self add: FamixSQLWhereClause new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newWithClause [

	<generated>
	^ self add: FamixSQLWithClause new
]
