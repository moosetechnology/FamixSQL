Extension { #name : #FamixSQLAbstractType }

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLAbstractType >> cursorParameters [
	"Relation named: #cursorParameters type: #FmxSQLQCursorParameter opposite: #type"

	<generated>
	<derived>
	<FMProperty: #cursorParameters type: #FmxSQLQCursorParameter opposite: #type>
	<package: #'FamixSQLQuery-Model'>
	^ self attributeAt: #cursorParameters ifAbsentPut: [ FMMultivalueLink on: self opposite: #type: ]
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLAbstractType >> cursorParameters: anObject [

	<generated>
	self cursorParameters value: anObject
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLAbstractType >> localVariables [
	"Relation named: #localVariables type: #FmxSQLQLocalVariable opposite: #type"

	<generated>
	<derived>
	<FMProperty: #localVariables type: #FmxSQLQLocalVariable opposite: #type>
	<package: #'FamixSQLQuery-Model'>
	^ self attributeAt: #localVariables ifAbsentPut: [ FMMultivalueLink on: self opposite: #type: ]
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLAbstractType >> localVariables: anObject [

	<generated>
	self localVariables value: anObject
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLAbstractType >> parameters [
	"Relation named: #parameters type: #FmxSQLQParameter opposite: #type"

	<generated>
	<derived>
	<FMProperty: #parameters type: #FmxSQLQParameter opposite: #type>
	<package: #'FamixSQLQuery-Model'>
	^ self attributeAt: #parameters ifAbsentPut: [ FMMultivalueLink on: self opposite: #type: ]
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLAbstractType >> parameters: anObject [

	<generated>
	self parameters value: anObject
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLAbstractType >> storedProceduresReturning [
	"Relation named: #storedProceduresReturning type: #FmxSQLQStoredProcedure opposite: #returnType"

	<generated>
	<derived>
	<FMProperty: #storedProceduresReturning type: #FmxSQLQStoredProcedure opposite: #returnType>
	<package: #'FamixSQLQuery-Model'>
	^ self attributeAt: #storedProceduresReturning ifAbsentPut: [ FMMultivalueLink on: self opposite: #returnType: ]
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLAbstractType >> storedProceduresReturning: anObject [

	<generated>
	self storedProceduresReturning value: anObject
]
