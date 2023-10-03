"
I am a view. I can be used transparently as a table but I do not hold data. My data are fetched by the SELECT query which defines myself.
"
Class {
	#name : #FamixSQLView,
	#superclass : #FamixSQLBehaviouralEntity,
	#traits : 'FamixSQLTColumnContainer + FamixSQLTQueryContainer + FamixTNamespace',
	#classTraits : 'FamixSQLTColumnContainer classTrait + FamixSQLTQueryContainer classTrait + FamixTNamespace classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLView class >> annotation [

	<FMClass: #View super: #FamixSQLBehaviouralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #testing }
FamixSQLView >> isView [

	<generated>
	^ true
]
