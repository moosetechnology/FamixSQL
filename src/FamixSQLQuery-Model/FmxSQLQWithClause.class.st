"
I am a with clause
"
Class {
	#name : #FmxSQLQWithClause,
	#superclass : #FmxSQLQClause,
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQWithClause class >> annotation [

	<FMClass: #WithClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQWithClause >> isWithClause [

	<generated>
	^ true
]
