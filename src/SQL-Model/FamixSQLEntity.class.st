Class {
	#name : #FamixSQLEntity,
	#superclass : #MooseEntity,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'SQL-Model'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixSQLEntity class >> isAbstract [

	<generated>
	^ self == FamixSQLEntity
]

{ #category : #meta }
FamixSQLEntity class >> metamodel [

	<generated>
	^ FamixSQLModel metamodel
]

{ #category : #testing }
FamixSQLEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixSQLEntity >> isNamespace [

	<generated>
	^ false
]
