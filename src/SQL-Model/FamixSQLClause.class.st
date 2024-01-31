"
I am an abstract class for all clauses in queries (FROM/WHERE/GROUPBY/HAVING/...


"
Class {
	#name : #FamixSQLClause,
	#superclass : #FamixSQLBehaviouralEntity,
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLClause class >> annotation [

	<FMClass: #Clause super: #FamixSQLBehaviouralEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
