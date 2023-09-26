"
I am a cursor, a local iterator that can have parameters
"
Class {
	#name : #FmxSQLQCursor,
	#superclass : #FmxSQLQEntity,
	#traits : 'FamixTNamedEntity + FamixTWithParameters + FmxSQLQBehaviouralEntity + FmxSQLQTQueryContainer',
	#classTraits : 'FamixTNamedEntity classTrait + FamixTWithParameters classTrait + FmxSQLQBehaviouralEntity classTrait + FmxSQLQTQueryContainer classTrait',
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxSQLQTWithCursor opposite: #cursors',
		'#references => FMMany type: #FmxSQLQCursorReference opposite: #cursor'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQCursor class >> annotation [

	<FMClass: #Cursor super: #FmxSQLQEntity>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQCursor >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #testing }
FmxSQLQCursor >> isCursor [

	<generated>
	^ true
]

{ #category : #accessing }
FmxSQLQCursor >> parentBehaviouralEntity [
	"Relation named: #parentBehaviouralEntity type: #FmxSQLQTWithCursor opposite: #cursors"

	<generated>
	<container>
	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxSQLQCursor >> parentBehaviouralEntity: anObject [

	<generated>
	parentBehaviouralEntity := anObject
]

{ #category : #navigation }
FmxSQLQCursor >> parentBehaviouralEntityGroup [
	<generated>
	<navigation: 'ParentBehaviouralEntity'>
	^ MooseSpecializedGroup with: self parentBehaviouralEntity
]

{ #category : #accessing }
FmxSQLQCursor >> references [
	"Relation named: #references type: #FmxSQLQCursorReference opposite: #cursor"

	<generated>
	<derived>
	^ references
]

{ #category : #accessing }
FmxSQLQCursor >> references: anObject [

	<generated>
	references value: anObject
]
