"
I am an INSERT query.


"
Class {
	#name : 'FamixSQLInsertQuery',
	#superclass : 'FamixSQLCRUDQuery',
	#category : 'SQL-Model-Entities',
	#package : 'SQL-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixSQLInsertQuery class >> annotation [

	<FMClass: #InsertQuery super: #FamixSQLCRUDQuery>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
