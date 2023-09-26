Extension { #name : #FamixSQLTable }

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLTable >> triggers [
	"Relation named: #triggers type: #FmxSQLQTrigger opposite: #table"

	<generated>
	<derived>
	<FMProperty: #triggers type: #FmxSQLQTrigger opposite: #table>
	<package: #'FamixSQLQuery-Model'>
	^ self attributeAt: #triggers ifAbsentPut: [ FMMultivalueLink on: self opposite: #table: ]
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLTable >> triggers: anObject [

	<generated>
	self triggers value: anObject
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLTable >> updateQueries [
	"Relation named: #updateQueries type: #FmxSQLQUpdateQuery opposite: #table"

	<generated>
	<derived>
	<FMProperty: #updateQueries type: #FmxSQLQUpdateQuery opposite: #table>
	<package: #'FamixSQLQuery-Model'>
	^ self attributeAt: #updateQueries ifAbsentPut: [ FMMultivalueLink on: self opposite: #table: ]
]

{ #category : #'*FamixSQLQuery-Model-accessing' }
FamixSQLTable >> updateQueries: anObject [

	<generated>
	self updateQueries value: anObject
]
