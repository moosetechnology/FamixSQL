"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : #FamixSQLBehaviouralEntity,
	#superclass : #FamixSQLEntity,
	#traits : 'FamixTNamedEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixTNamedEntity classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'SQL-Model-Entities'
}

{ #category : #meta }
FamixSQLBehaviouralEntity class >> annotation [

	<FMClass: #BehaviouralEntity super: #FamixSQLEntity>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
