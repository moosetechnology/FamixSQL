Class {
	#name : #FamixSQLTableGroup,
	#superclass : #MooseSpecializedGroup,
	#category : #'SQL-Model-Groups'
}

{ #category : #meta }
FamixSQLTableGroup class >> annotation [

	<FMClass: #TableGroup super: #MooseSpecializedGroup>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #meta }
FamixSQLTableGroup class >> metamodel [

	<generated>
	^ FamixSQLModel metamodel
]

{ #category : #testing }
FamixSQLTableGroup >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixSQLTableGroup >> isLocalVariable [

	<generated>
	^ false
]

{ #category : #testing }
FamixSQLTableGroup >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixSQLTableGroup >> isQueryable [

	<generated>
	^ false
]

{ #category : #testing }
FamixSQLTableGroup >> isStoredProcedure [

	<generated>
	^ false
]

{ #category : #testing }
FamixSQLTableGroup >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixSQLTableGroup >> isTriggerStoredProcedure [

	<generated>
	^ false
]

{ #category : #testing }
FamixSQLTableGroup >> isView [

	<generated>
	^ false
]
