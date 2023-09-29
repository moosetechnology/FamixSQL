Class {
	#name : #FamixSQLModel,
	#superclass : #MooseModel,
	#traits : 'FamixSQLTEntityCreator',
	#classTraits : 'FamixSQLTEntityCreator classTrait',
	#category : #'SQL-Model-Model'
}

{ #category : #accessing }
FamixSQLModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : #meta }
FamixSQLModel class >> annotation [
	<FMClass: #FamixSQLModel super: #MooseModel>
	<package: #'SQL-Model'>
	<generated>
]
