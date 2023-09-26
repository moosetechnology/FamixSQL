"
I am a limit clause
"
Class {
	#name : #FmxSQLQLimitClause,
	#superclass : #FmxSQLQClause,
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQLimitClause class >> annotation [

	<FMClass: #LimitClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQLimitClause >> isLimitClause [

	<generated>
	^ true
]
