Class {
	#name : #FamixSQLColumn,
	#superclass : #FamixSQLStructuralEntity,
	#traits : 'FamixSQLTColumn + FamixSQLTWithTypeReference',
	#classTraits : 'FamixSQLTColumn classTrait + FamixSQLTWithTypeReference classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLColumn class >> annotation [

	<FMClass: #Column super: #FamixSQLStructuralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
