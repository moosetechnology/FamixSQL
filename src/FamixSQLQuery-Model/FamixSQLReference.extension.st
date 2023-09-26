Extension { #name : #FamixSQLReference }

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLReference >> belongsToGroup [
	"Relation named: #belongsToGroup type: #FmxSQLQReferencesGroup opposite: #references"

	<generated>
	<container>
	<FMProperty: #belongsToGroup type: #FmxSQLQReferencesGroup opposite: #references>
	<package: #'FamixSQLQuery-Model'>
	^ self attributeAt: #belongsToGroup ifAbsent: [ nil ]
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLReference >> belongsToGroup: anObject [

	<generated>
	self attributeAt: #belongsToGroup put: (FMMultivalueLink on: self update: #references from: self belongsToGroup to: anObject).
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLReference >> storedProcedureContainer [
	"Relation named: #storedProcedureContainer type: #FmxSQLQStoredProcedureCall opposite: #arguments"

	<generated>
	<container>
	<FMProperty: #storedProcedureContainer type: #FmxSQLQStoredProcedureCall opposite: #arguments>
	<package: #'FamixSQLQuery-Model'>
	^ self attributeAt: #storedProcedureContainer ifAbsent: [ nil ]
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLReference >> storedProcedureContainer: anObject [

	<generated>
	self attributeAt: #storedProcedureContainer put: (FMMultivalueLink on: self update: #arguments from: self storedProcedureContainer to: anObject).
]
