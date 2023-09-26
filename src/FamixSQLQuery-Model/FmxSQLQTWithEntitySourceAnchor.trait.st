Trait {
	#name : #FmxSQLQTWithEntitySourceAnchor,
	#instVars : [
		'#anchorsOnIntervalsOfCode => FMMany type: #FmxSQLQEntitySourceAnchor opposite: #entity'
	],
	#category : #'FamixSQLQuery-Model-Traits'
}

{ #category : #meta }
FmxSQLQTWithEntitySourceAnchor classSide >> annotation [

	<FMClass: #TWithEntitySourceAnchor super: #Object>
	<package: #'FamixSQLQuery-Model'>
	<generated>
	^self
]

{ #category : #adding }
FmxSQLQTWithEntitySourceAnchor >> addAnchorsOnIntervalsOfCode: anObject [
	<generated>
	^ self anchorsOnIntervalsOfCode add: anObject
]

{ #category : #accessing }
FmxSQLQTWithEntitySourceAnchor >> anchorsOnIntervalsOfCode [
	"Relation named: #anchorsOnIntervalsOfCode type: #FmxSQLQEntitySourceAnchor opposite: #entity"

	<generated>
	<derived>
	^ anchorsOnIntervalsOfCode
]

{ #category : #accessing }
FmxSQLQTWithEntitySourceAnchor >> anchorsOnIntervalsOfCode: anObject [

	<generated>
	anchorsOnIntervalsOfCode value: anObject
]
