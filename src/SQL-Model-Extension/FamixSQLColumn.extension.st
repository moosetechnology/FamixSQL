Extension { #name : #FamixSQLColumn }

{ #category : #'*SQL-Model-Extension' }
FamixSQLColumn >> hasForeignKeyReference [

	^ self incomingForeignKeyReferences notEmpty
]

{ #category : #'*SQL-Model-Extension' }
FamixSQLColumn >> isForeignKeyColumn [

	^ self incomingReferences anySatisfy: [ :reference | 
		  reference source isKindOf: FamixSQLForeignKeyConstraint ]
]

{ #category : #'*SQL-Model-Extension' }
FamixSQLColumn >> isPrimaryKeyColumn [

	^ self incomingReferences anySatisfy: [ :reference | 
		  reference source isKindOf: FamixSQLPrimaryKeyConstraint ]
]
