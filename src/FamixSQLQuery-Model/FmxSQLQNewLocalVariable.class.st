"
I model the special NEW local variable accessible from inside trigger stored procedure.
"
Class {
	#name : #FmxSQLQNewLocalVariable,
	#superclass : #FmxSQLQLocalVariable,
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQNewLocalVariable class >> annotation [

	<FMClass: #NewLocalVariable super: #FmxSQLQLocalVariable>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]
