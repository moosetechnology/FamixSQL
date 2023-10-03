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
