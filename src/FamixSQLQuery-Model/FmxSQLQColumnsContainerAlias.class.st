"
I am an alias for a table. Eventually I also contain alias to columns.
"
Class {
	#name : #FmxSQLQColumnsContainerAlias,
	#superclass : #FmxSQLQAlias,
	#traits : 'FamixSQLTWithTableReference + FmxSQLQTWithViewReference',
	#classTraits : 'FamixSQLTWithTableReference classTrait + FmxSQLQTWithViewReference classTrait',
	#instVars : [
		'#columnAliases => FMMany type: #FmxSQLQColumnAlias opposite: #columnsContainerAlias'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQColumnsContainerAlias class >> annotation [

	<FMClass: #ColumnsContainerAlias super: #FmxSQLQAlias>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQColumnsContainerAlias >> addColumnAliase: anObject [
	<generated>
	^ self columnAliases add: anObject
]

{ #category : #accessing }
FmxSQLQColumnsContainerAlias >> columnAliases [
	"Relation named: #columnAliases type: #FmxSQLQColumnAlias opposite: #columnsContainerAlias"

	<generated>
	<derived>
	^ columnAliases
]

{ #category : #accessing }
FmxSQLQColumnsContainerAlias >> columnAliases: anObject [

	<generated>
	columnAliases value: anObject
]
