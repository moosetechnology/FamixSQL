"
## Relations
======================

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingReferences` | `FamixSQLTType` | `type` | `FamixSQLTTypeReference` | |



"
Trait {
	#name : #FamixSQLTType,
	#instVars : [
		'#incomingReferences => FMMany type: #FamixSQLTTypeReference opposite: #type'
	],
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTType classSide >> annotation [

	<FMClass: #TType super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]

{ #category : #adding }
FamixSQLTType >> addIncomingReference: anObject [
	<generated>
	^ self incomingReferences add: anObject
]

{ #category : #accessing }
FamixSQLTType >> incomingReferences [
	"Relation named: #incomingReferences type: #FamixSQLTTypeReference opposite: #type"

	<generated>
	<derived>
	^ incomingReferences
]

{ #category : #accessing }
FamixSQLTType >> incomingReferences: anObject [

	<generated>
	incomingReferences value: anObject
]
