"
I am an alias for a column.
"
Class {
	#name : #FmxSQLQColumnAlias,
	#superclass : #FmxSQLQAlias,
	#traits : 'FmxSQLQTWithReferencesGroupReference',
	#classTraits : 'FmxSQLQTWithReferencesGroupReference classTrait',
	#instVars : [
		'#columnsContainerAlias => FMOne type: #FmxSQLQColumnsContainerAlias opposite: #columnAliases'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQColumnAlias class >> annotation [

	<FMClass: #ColumnAlias super: #FmxSQLQAlias>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQColumnAlias >> columnsContainerAlias [
	"Relation named: #columnsContainerAlias type: #FmxSQLQColumnsContainerAlias opposite: #columnAliases"

	<generated>
	^ columnsContainerAlias
]

{ #category : #accessing }
FmxSQLQColumnAlias >> columnsContainerAlias: anObject [

	<generated>
	columnsContainerAlias := anObject
]
