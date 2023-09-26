"
I model the special OLD local variable accessible from inside trigger stored procedure.
"
Class {
	#name : #FmxSQLQOldLocalVariable,
	#superclass : #FmxSQLQLocalVariable,
	#traits : 'FamixSQLTColumnsContainer',
	#classTraits : 'FamixSQLTColumnsContainer classTrait',
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQOldLocalVariable class >> annotation [

	<FMClass: #OldLocalVariable super: #FmxSQLQLocalVariable>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]
