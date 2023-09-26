Extension { #name : #FamixSQLColumn }

{ #category : #'*SQL-Model-Extension' }
FamixSQLColumn >> hasForeignKeyReference [

	^ self references anySatisfy: [ :reference | 
		  reference foreignKeySource isKindOf: FamixSQLForeignKeyConstraint ]
]

{ #category : #'*SQL-Model-Extension' }
FamixSQLColumn >> isForeignKeyColumn [

	^ self references anySatisfy: [ :reference | 
		  reference source isKindOf: FamixSQLForeignKeyConstraint ]
]

{ #category : #'*SQL-Model-Extension' }
FamixSQLColumn >> isPrimaryKeyColumn [

	^ self references anySatisfy: [ :reference | 
		  reference source isKindOf: FamixSQLPrimaryKeyConstraint ]
]
