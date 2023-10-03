"
I model the special OLD local variable accessible from inside trigger stored procedure.
"
Class {
	#name : #FamixSQLOldLocalVariable,
	#superclass : #FamixSQLLocalVariable,
	#traits : 'FamixSQLTColumnContainer',
	#classTraits : 'FamixSQLTColumnContainer classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLOldLocalVariable class >> annotation [

	<FMClass: #OldLocalVariable super: #FamixSQLLocalVariable>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
