"
I am an into clause
"
Class {
	#name : #FmxSQLQIntoClause,
	#superclass : #FmxSQLQClause,
	#traits : 'FamixSQLTWithColumnReference + FamixSQLTWithNamespaceReference + FamixSQLTWithTableReference',
	#classTraits : 'FamixSQLTWithColumnReference classTrait + FamixSQLTWithNamespaceReference classTrait + FamixSQLTWithTableReference classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQIntoClause class >> annotation [

	<FMClass: #IntoClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]
