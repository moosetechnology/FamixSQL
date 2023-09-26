"
I am a join clause
"
Class {
	#name : #FmxSQLQJoinClause,
	#superclass : #FmxSQLQClause,
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQJoinClause class >> annotation [

	<FMClass: #JoinClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQJoinClause >> isJoinClause [

	<generated>
	^ true
]
