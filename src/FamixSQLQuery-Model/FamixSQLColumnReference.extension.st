Extension { #name : #FamixSQLColumnReference }

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLColumnReference >> triggerStoredProceduresReferencing [
	"Relation named: #triggerStoredProceduresReferencing type: #FmxSQLQTriggerStoredProcedure opposite: #columnsReferenced"

	<generated>
	<container>
	<FMProperty: #triggerStoredProceduresReferencing type: #FmxSQLQTriggerStoredProcedure opposite: #columnsReferenced>
	<package: #'FamixSQLQuery-Model'>
	^ self attributeAt: #triggerStoredProceduresReferencing ifAbsent: [ nil ]
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLColumnReference >> triggerStoredProceduresReferencing: anObject [

	<generated>
	self attributeAt: #triggerStoredProceduresReferencing put: (FMMultivalueLink on: self update: #columnsReferenced from: self triggerStoredProceduresReferencing to: anObject).
]
