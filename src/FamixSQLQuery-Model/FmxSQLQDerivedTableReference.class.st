"
I am a reference to a derived table.
"
Class {
	#name : #FmxSQLQDerivedTableReference,
	#superclass : #AnObsoleteFamixSQLReference,
	#instVars : [
		'#derivedTable => FMOne type: #FmxSQLQDerivedTable opposite: #references',
		'#source => FMOne type: #FmxSQLQTWithDerivedTableReference opposite: #outgoingDerivedTableReferences'
	],
	#category : #'FamixSQLQuery-Model-Entities'
}

{ #category : #meta }
FmxSQLQDerivedTableReference class >> annotation [

	<FMClass: #DerivedTableReference super: #FamixSQLReference>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FmxSQLQDerivedTableReference >> derivedTable [
	"Relation named: #derivedTable type: #FmxSQLQDerivedTable opposite: #references"

	<generated>
	<target>
	^ derivedTable
]

{ #category : #accessing }
FmxSQLQDerivedTableReference >> derivedTable: anObject [

	<generated>
	derivedTable := anObject
]

{ #category : #accessing }
FmxSQLQDerivedTableReference >> source [
	"Relation named: #source type: #FmxSQLQTWithDerivedTableReference opposite: #outgoingDerivedTableReferences"

	<generated>
	<source>
	^ source
]

{ #category : #accessing }
FmxSQLQDerivedTableReference >> source: anObject [

	<generated>
	source := anObject
]
