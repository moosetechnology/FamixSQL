Class {
	#name : #FamixSQLGenerator,
	#superclass : #FamixSQLStructuralGenerator,
	#instVars : [
		'derivedTable',
		'localVariable',
		'parameter',
		'storedProcedure',
		'triggerStoredProcedure',
		'trigger',
		'view',
		'clause',
		'exceptClause',
		'fromClause',
		'groupByClause',
		'havingClause',
		'intersectClause',
		'intoClause',
		'joinClause',
		'limitClause',
		'orderByClause',
		'onConflictClause',
		'returningClause',
		'selectClause',
		'setClause',
		'unionClause',
		'usingClause',
		'valuesClause',
		'whereClause',
		'withClause',
		'newLocalVariable',
		'oldLocalVariable',
		'tQueryContainer',
		'tQuery',
		'crudQuery',
		'deleteQuery',
		'insertQuery',
		'selectQuery',
		'updateQuery',
		'valuesQuery',
		'sqlBehaviouralEntity',
		'columnContainerReference'
	],
	#category : #'SQL-Model-Generator'
}

{ #category : #comments }
FamixSQLGenerator >> clauseComment [
	^ 'I am an abstract class for all clauses in queries (FROM/WHERE/GROUPBY/HAVING/...'
]

{ #category : #comments }
FamixSQLGenerator >> conflictClauseComment [
	^ 'I am a ON CONFLICT clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> crudQueryComment [
	^ 'I am an abstract superclass for Create Read Update Delete (CRUD) queries.

The Create query is the INSERT query in SQL.

The Read query is the SELECT query in SQL.

The Update query is the UPDATE query in SQL.

The Delete query is the DELETE query in SQL.

My subclasses represent these four queries.'
]

{ #category : #definition }
FamixSQLGenerator >> defineClassRelations [

	super defineClassRelations.

	(trigger property: #storedProcedure)
		*- triggerStoredProcedure
]

{ #category : #definition }
FamixSQLGenerator >> defineClasses [

	super defineClasses.

	"Behavioural"

	sqlBehaviouralEntity := builder newClassNamed: #BehaviouralEntity.

	columnContainerReference := builder newClassNamed: #ColumnContainerReference.
	derivedTable := builder newClassNamed: #DerivedTable comment: self derivedTableComment.
	localVariable := builder newClassNamed: #LocalVariable comment: self localVariableComment.
	newLocalVariable := builder newClassNamed: #NewLocalVariable comment: self newLocalVariableComment.
	oldLocalVariable := builder newClassNamed: #OldLocalVariable comment: self oldLocalVariableComment.
	parameter := builder newClassNamed: #Parameter comment: self parameterComment.
	storedProcedure := builder newClassNamed: #StoredProcedure comment: self storedProcedureComment.
	storedProcedure withTesting.
	trigger := builder newClassNamed: #Trigger comment: self triggerComment.
	triggerStoredProcedure := builder newClassNamed: #TriggerStoredProcedure comment: self triggerStoredProcedureComment.
	triggerStoredProcedure withTesting.
	view := builder newClassNamed: #View comment: self viewComment.
	view withTesting.

	"Queries"
	crudQuery := builder newClassNamed: #CRUDQuery comment: self crudQueryComment.
	deleteQuery := builder newClassNamed: #DeleteQuery comment: self deleteQueryComment.
	insertQuery := builder newClassNamed: #InsertQuery comment: self insertQueryComment.
	selectQuery := builder newClassNamed: #SelectQuery comment: self selectQueryComment.
	updateQuery := builder newClassNamed: #UpdateQuery comment: self updateQueryComment.
	valuesQuery := builder newClassNamed: #ValuesQuery comment: self valuesQueryComment.

	"Clause"

	clause := builder newClassNamed: #Clause comment: self clauseComment.
	exceptClause := builder newClassNamed: #ExceptClause comment: self exceptClauseComment.
	fromClause := builder newClassNamed: #FromClause comment: self fromClauseComment.
	groupByClause := builder newClassNamed: #GroupByClause comment: self groupByClauseComment.
	havingClause := builder newClassNamed: #HavingClause comment: self havingClauseComment.
	intersectClause := builder newClassNamed: #IntersectClause comment: self intersectClauseComment.
	intoClause := builder newClassNamed: #IntoClause comment: self intoClauseComment.
	joinClause := builder newClassNamed: #JoinClause comment: self joinClauseComment.
	limitClause := builder newClassNamed: #LimitClause comment: self limitClauseComment.
	orderByClause := builder newClassNamed: #OrderByClause comment: self orderByClauseComment.
	onConflictClause := builder newClassNamed: #OnConflictClause comment: self conflictClauseComment.
	returningClause := builder newClassNamed: #ReturningClause comment: self returningClauseComment.
	selectClause := builder newClassNamed: #SelectClause comment: self selectClauseComment.
	setClause := builder newClassNamed: #SetClause comment: self setClauseComment.
	unionClause := builder newClassNamed: #UnionClause comment: self unionClauseComment.
	usingClause := builder newClassNamed: #UsingClause comment: self usingClauseComment.
	valuesClause := builder newClassNamed: #ValuesClause comment: self valuesClauseComment.
	whereClause := builder newClassNamed: #WhereClause comment: self whereClauseComment.
	withClause := builder newClassNamed: #WithClause comment: self withClauseComment.

]

{ #category : #definition }
FamixSQLGenerator >> defineHierarchy [

	super defineHierarchy.

	"Behavioural entities"

	sqlBehaviouralEntity --|> #TEntityMetaLevelDependency.
	sqlBehaviouralEntity --|> #TNamedEntity.  "actually CRUD-Queries should not be named"

	columnContainerReference --|> tColumnContainerReference.

	derivedTable --|> sqlBehaviouralEntity.
	derivedTable --|> tColumnContainer.
	derivedTable --|> tQueryContainer.

	localVariable --|> #TLocalVariable.
	localVariable --|> #TAccessible.
	localVariable --|> tWithTypeReference.

	newLocalVariable --|> localVariable.
	newLocalVariable --|> tColumnContainer.

	oldLocalVariable --|> localVariable.
	oldLocalVariable --|> tColumnContainer.

	parameter --|> #TParameter.
	parameter --|> #TAccessible.
	parameter --|> tWithTypeReference.

	storedProcedure --|> sqlBehaviouralEntity.
	storedProcedure --|> tQueryContainer.
	storedProcedure--|> #TNamespace.
	storedProcedure --|> #TWithReferences.
	storedProcedure --|> #TInvocable.
	storedProcedure --|> #TWithInvocations.
	storedProcedure --|> #TWithParameters.
	storedProcedure --|> #TWithLocalVariables.
	storedProcedure --|> #TWithAccesses.
	storedProcedure --|> tWithColumnContainerReference.
	storedProcedure --|> tWithColumnReference. "For COPY TYPE feature of Postgres."
	storedProcedure --|> tWithTypeReference.
	"storedProcedure --|> tWithAlias.
	storedProcedure --|> tWithCursor.
	storedProcedure --|> tWithCursorReference.
	storedProcedure --|> tWithNamespaceReference".

	triggerStoredProcedure --|> storedProcedure.

	trigger --|> sqlBehaviouralEntity.
	trigger --|> #TNamespace.
	trigger --|> tWithColumnContainerReference.

	view --|> sqlBehaviouralEntity.
	view --|> tColumnContainer.
	view --|> tQueryContainer.
	view --|> #TNamespace.
	"view --|> #TWithImmediateSource.
	view --|> tAbstractType."

	"Queries"

	crudQuery --|> sqlBehaviouralEntity.
	"crudQuery --|> #TWithSourceAnchor.
	crudQuery --|> #TDependencyQueries."

	deleteQuery --|> crudQuery.
	"deleteQuery --|> tDefiningDerivedTables."
	insertQuery --|> crudQuery.
	"insertQuery --|> tDefiningDerivedTables."
	selectQuery --|> crudQuery.
	"selectQuery --|> tDefiningDerivedTables."
	updateQuery --|> crudQuery.
	"updateQuery --|> tDefiningDerivedTables."
	valuesQuery --|> crudQuery.

	"Clauses"	

	clause --|> sqlBehaviouralEntity.

	exceptClause --|> clause.
	exceptClause --|> tWithColumnContainerReference.
	"exceptClause --|> tWithNamespaceReference."

	fromClause --|> clause.
	fromClause --|> tWithColumnContainerReference.
	fromClause --|> tWithColumnReference. "Because of join clause"
	fromClause --|> #TWithAccesses. "Because of join clause"
	fromClause --|> #TWithInvocations. "Because of join clause"
	"fromClause --|> tWithReferencesGroupReference.
	fromClause --|> tWithNamespaceReference."

	groupByClause --|> clause.
	groupByClause --|> #TWithAccesses.
	groupByClause --|> #TWithInvocations.
	groupByClause --|> tWithColumnReference.
	groupByClause --|> tWithColumnContainerReference. "For table.column ref."
	"groupByClause --|> tWithReferencesGroupReference.
	groupByClause --|> tWithNamespaceReference."

	havingClause --|> clause.
	havingClause --|> #TWithAccesses.
	havingClause --|> #TWithInvocations.
	havingClause --|> tWithColumnReference.
	havingClause --|> tWithColumnContainerReference. "For table.column ref."
	"havingClause --|> tWithReferencesGroupReference.
	havingClause --|> tWithNamespaceReference."

	intersectClause --|> clause.
	intersectClause --|> tWithColumnContainerReference.
	"intersectClause --|> tWithNamespaceReference."

	intoClause --|> clause.
	intoClause --|> tWithColumnContainerReference.
	intoClause --|> tWithColumnReference.
	"intoClause --|> tWithNamespaceReference."

	joinClause --|> clause.

	limitClause --|> clause.

	onConflictClause --|> clause.

	orderByClause --|> clause.
	orderByClause --|> #TWithAccesses.
	orderByClause --|> #TWithInvocations.
	orderByClause --|> tWithColumnReference.
	orderByClause --|> tWithColumnContainerReference. "For view.column ref."
	"orderByClause --|> tWithReferencesGroupReference.
	orderByClause --|> tWithNamespaceReference."

	returningClause --|> clause.
	returningClause --|> tWithColumnReference.
	"returningClause --|> tWithReferencesGroupReference."
	returningClause --|> #TWithAccesses.
	returningClause --|> #TWithInvocations.

	setClause --|> clause.
	setClause --|> tWithColumnContainerReference.
	setClause --|> tWithColumnReference.
	setClause --|> #TWithAccesses.
	setClause --|> #TWithInvocations.

	selectClause --|> clause.
	selectClause --|> tWithColumnReference.
	selectClause --|> #TWithAccesses.
	selectClause --|> #TWithInvocations.
	selectClause --|> tWithColumnContainerReference. "Through table.column ref."
	"selectClause --|> tWithNamespaceReference."

	unionClause --|> clause.
	unionClause --|> tWithColumnContainerReference.
	"unionClause --|> tWithNamespaceReference."

	usingClause --|> clause.
	usingClause --|> tWithColumnContainerReference.
	"usingClause --|> tWithNamespaceReference."

	valuesClause --|> clause.
	valuesClause --|> #TWithAccesses.
	valuesClause --|> #TWithInvocations.
	valuesClause --|> tWithColumnContainerReference.
	valuesClause --|> tWithColumnReference.

	whereClause --|> clause.
	whereClause --|> tWithColumnReference.
	whereClause --|> #TWithAccesses.
	whereClause --|> #TWithInvocations.
	whereClause --|> tWithColumnContainerReference. "For table.column ref."
	"whereClause --|> tWithReferencesGroupReference.
	whereClause --|> tWithNamespaceReference."

	withClause --|> clause.

]

{ #category : #definition }
FamixSQLGenerator >> defineTraits [

	super defineTraits.

	tQuery := builder newTraitNamed: #TQuery comment: self queryComment.
	tQueryContainer := builder newTraitNamed: #TQueryContainer comment: self queryContainerComment.

]

{ #category : #definition }
FamixSQLGenerator >> defineTraitsRelations [

	super defineTraitsRelations.

	(tQueryContainer property: #queries)
		<>-* (tQuery property: #containerEntity).

]

{ #category : #comments }
FamixSQLGenerator >> deleteQueryComment [
	^ 'I am an DELETE query.'
]

{ #category : #comments }
FamixSQLGenerator >> derivedTableComment [
	^ 'I am a derived table. A derived table is a temporary table created to store temporarily the results of a sub-select query in a select query. Such tables are not globally named as a Tableor a View because they can not be accessed outside the query in which they are computed (which is also the query defining them). Nonetheless, they can get an alias to be referenced inside the query. .'
]

{ #category : #comments }
FamixSQLGenerator >> exceptClauseComment [
	^ 'I am an EXCEPT clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> fromClauseComment [
	^ 'I am a FROM clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> groupByClauseComment [
	^ 'I am a GROUP BY clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> havingClauseComment [
	^ 'I am a HAVING clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> insertQueryComment [
	^ 'I am an INSERT query.'
]

{ #category : #comments }
FamixSQLGenerator >> intersectClauseComment [
	^ 'I am an INTERSECT clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> intoClauseComment [
	^ 'I am an INTO clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> joinClauseComment [
	^ 'I am a JOIN clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> limitClauseComment [
	^ 'I am a LIMIT clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> localVariableComment [
	^ 'I am a local variable of a stored procedure. I have a type.'
]

{ #category : #definition }
FamixSQLGenerator >> newBuilder [

	^ super newBuilder
		  withFileImport;
		  yourself
]

{ #category : #comments }
FamixSQLGenerator >> newLocalVariableComment [
	^ 'I model the special NEW local variable accessible from inside trigger stored procedure.'
]

{ #category : #comments }
FamixSQLGenerator >> oldLocalVariableComment [
	^ 'I model the special OLD local variable accessible from inside trigger stored procedure.'
]

{ #category : #comments }
FamixSQLGenerator >> orderByClauseComment [
	^ 'I am an ORDER BY clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> parameterComment [
	^ 'I am a parameter of a stored procedure. I have a type.'
]

{ #category : #comments }
FamixSQLGenerator >> returningClauseComment [
	^ 'I am a RETURNING clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> selectClauseComment [
	^ 'I am a SELECT clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> selectQueryComment [
	^ 'I am an SELECT query.'
]

{ #category : #comments }
FamixSQLGenerator >> setClauseComment [
	^ 'I am a SET clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> storedProcedureComment [
	^ 'I am a stored procedure. That is to say, a function that is defined inside the database.'
]

{ #category : #comments }
FamixSQLGenerator >> triggerComment [
	^ 'I am a trigger. A trigger allows to define actions to performs when a specific event occurs on a table. Because a trigger can not exist without the table to which it listens to events, a trigger is contained in a table.'
]

{ #category : #comments }
FamixSQLGenerator >> triggerStoredProcedureComment [
	^ 'I am a special stored procedure used to define the actions a trigger perform.

This concept does not exists in all DBMS (for example, in MySQL a trigger has a body directly defined when defining the trigger). Nevertheless, it allows to unify the different approach take by different DBMS. In the meta-model, a trigger is always defined as referencing a trigger stored procedure. For DBMS where it is not implemented like that in reality, the trigger stored procedure as no name because it is virtual.'
]

{ #category : #comments }
FamixSQLGenerator >> unionClauseComment [
	^ 'I am a UNION clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> updateQueryComment [
	^ 'I am an UPDATE query.'
]

{ #category : #comments }
FamixSQLGenerator >> usingClauseComment [
	^ 'I am a USING clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> valuesClauseComment [
	^ 'I am a VALUES clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> valuesQueryComment [
	^ 'I am a VALUES query.'
]

{ #category : #comments }
FamixSQLGenerator >> viewComment [
	^ 'I am a view. I can be used transparently as a table but I do not hold data. My data are fetched by the SELECT query which defines myself.'
]

{ #category : #comments }
FamixSQLGenerator >> whereClauseComment [
	^ 'I am a WHERE clause in a query'
]

{ #category : #comments }
FamixSQLGenerator >> withClauseComment [
	^ 'I am a WITH clause in a query'
]
