Extension { #name : #FamixSQLCheckConstraint }

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLCheckConstraint >> storedProceduresCalled [
	"Relation named: #storedProceduresCalled type: #FmxSQLQStoredProcedure opposite: #checkConstraintsCalling"

	<generated>
	<derived>
	<FMProperty: #storedProceduresCalled type: #FmxSQLQStoredProcedure opposite: #checkConstraintsCalling>
	<package: #'FamixSQLQuery-Model'>
	^ self attributeAt: #storedProceduresCalled ifAbsentPut: [ FMMultiMultivalueLink on: self opposite: #checkConstraintsCalling ]
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLCheckConstraint >> storedProceduresCalled: anObject [

	<generated>
	self storedProceduresCalled value: anObject
]
