Class {
	#name : #FmxSQLQModel,
	#superclass : #MooseModel,
	#category : #'FamixSQLQuery-Model-Model'
}

{ #category : #accessing }
FmxSQLQModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'SQL-Model' #'Moose-Query' #'Famix-Traits')
]

{ #category : #meta }
FmxSQLQModel class >> annotation [
	<FMClass: #FmxSQLQModel super: #MooseModel>
	<package: #'FamixSQLQuery-Model'>
	<generated>
]

{ #category : #testing }
FmxSQLQModel class >> canBeImportedFromFile [
	<generated>
	^true
]
