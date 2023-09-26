Class {
	#name : #SQLNodeStyler,
	#superclass : #HNodeStyler,
	#category : #'SQL-Model-Vizualisation'
}

{ #category : #accessing }
SQLNodeStyler >> labelFor: anHNode [
	| label |
	label := super labelFor: anHNode.
	(anHNode rawModel isKindOf: FamixSQLColumn) ifTrue: [ 
		self updateLabel: label forColumn: anHNode rawModel.
		 ].
	^ label
]

{ #category : #accessing }
SQLNodeStyler >> updateLabel: label forColumn: aColumn [

	aColumn isPrimaryKeyColumn ifTrue: [ label underline ].
	aColumn isForeignKeyColumn ifTrue: [ 
		label text: '#' , label text.
		label italic ]
]
