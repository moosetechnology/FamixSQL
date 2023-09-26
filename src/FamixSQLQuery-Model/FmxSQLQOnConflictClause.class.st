"
I am a on conflict clause
"
Class {
	#name : #FmxSQLQOnConflictClause,
	#superclass : #FmxSQLQClause,
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQOnConflictClause class >> annotation [

	<FMClass: #OnConflictClause super: #FmxSQLQClause>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #testing }
FmxSQLQOnConflictClause >> isOnConflictClause [

	<generated>
	^ true
]
