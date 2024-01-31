"
I am an abstract superclass for Create Read Update Delete (CRUD) queries.

The Create query is the INSERT query in SQL.

The Read query is the SELECT query in SQL.

The Update query is the UPDATE query in SQL.

The Delete query is the DELETE query in SQL.

My subclasses represent these four queries.


"
Class {
	#name : #FamixSQLCRUDQuery,
	#superclass : #FamixSQLBehaviouralEntity,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLCRUDQuery class >> annotation [

	<FMClass: #CRUDQuery super: #FamixSQLBehaviouralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
