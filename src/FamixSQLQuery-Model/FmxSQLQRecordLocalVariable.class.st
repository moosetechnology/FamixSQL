"
I am local variable of type record. I can contain columns. These columns are set when a SELECT INTO is encountered.
"
Class {
	#name : #FmxSQLQRecordLocalVariable,
	#superclass : #FmxSQLQLocalVariable,
	#traits : 'FamixSQLTColumnsContainer',
	#classTraits : 'FamixSQLTColumnsContainer classTrait',
	#instVars : [
		'#queryBoundTo => FMOne type: #FmxSQLQSelectQuery opposite: #recordLocalVariables'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQRecordLocalVariable class >> annotation [

	<FMClass: #RecordLocalVariable super: #FmxSQLQLocalVariable>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQRecordLocalVariable >> queryBoundTo [
	"Relation named: #queryBoundTo type: #FmxSQLQSelectQuery opposite: #recordLocalVariables"

	<generated>
	^ queryBoundTo
]

{ #category : #accessing }
FmxSQLQRecordLocalVariable >> queryBoundTo: anObject [

	<generated>
	queryBoundTo := anObject
]
