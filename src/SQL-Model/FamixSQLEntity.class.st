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
	^self
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
