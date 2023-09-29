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
FamixSQLTEntityCreator >> newCheckConstraint [

	<generated>
	^ self add: FamixSQLCheckConstraint new
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
FamixSQLTEntityCreator >> newForeignKeyConstraint [

	<generated>
	^ self add: FamixSQLForeignKeyConstraint new
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
FamixSQLTEntityCreator >> newNamespaceReference [

	<generated>
	^ self add: FamixSQLNamespaceReference new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newNotNullConstraint [

	<generated>
	^ self add: FamixSQLNotNullConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newPrimaryKeyConstraint [

	<generated>
	^ self add: FamixSQLPrimaryKeyConstraint new
]

{ #category : #'entity creation' }
FamixSQLTEntityCreator >> newReference [

	<generated>
	^ self add: FamixSQLReference new
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
FamixSQLTEntityCreator >> newTableReference [

	<generated>
	^ self add: FamixSQLTableReference new
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
FamixSQLTEntityCreator >> newUniqueConstraint [

	<generated>
	^ self add: FamixSQLUniqueConstraint new
]
