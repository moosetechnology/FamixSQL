Class {
	#name : #SQLRSTableGroupVizualisation,
	#superclass : #Object,
	#instVars : [
		'tableBuilder',
		'canvas',
		'sourceGroup',
		'shoudBeCollapsed'
	],
	#category : #'SQL-Model-Vizualisation'
}

{ #category : #accessing }
SQLRSTableGroupVizualisation >> build [

	| tablesNode columnNodes rootNode |
	tablesNode := self sourceGroup collect: [ :table | 
		              | node |
		              node := self tableBuilder shapeFor: table.
		              self shoudBeCollapsed ifTrue: [ node collapse ].
		              node ].
	columnNodes := tablesNode flatCollect: #children.
	columnNodes do: [ :columnNode | 
		self extractAssociationFor: columnNode with: columnNodes ].

	rootNode := HNode new.
	rootNode addAll: tablesNode.
	rootNode layout: (RSForceBasedLayout new
			 charge: -500;
			 length: 80;
			 yourself).

	canvas := HSimpleVisualizationBuilder new
		          nodeStyler: SQLNodeStyler new;
		          rootNode: rootNode;
		          build.
	canvas zoomToFit
]

{ #category : #accessing }
SQLRSTableGroupVizualisation >> canvas [

	^ canvas
]

{ #category : #accessing }
SQLRSTableGroupVizualisation >> canvas: anObject [

	canvas := anObject
]

{ #category : #accessing }
SQLRSTableGroupVizualisation >> collapseAll [
	shoudBeCollapsed := true
]

{ #category : #accessing }
SQLRSTableGroupVizualisation >> extractAssociationFor: nodeColumn with: allNodes [

	| ref |
	ref := (nodeColumn rawModel incomingForeignKeyReferences
					collect: [ :foreignRef |
						foreignRef foreignKeyConstraint columnReferences collect: [ 
				   			:columnReference | columnReference column ] ]) flattened.
	nodeColumn dependenciesToNodes:
		(allNodes select: [ :aColumnNode | 
			 ref includes: aColumnNode rawModel ])
]

{ #category : #initialization }
SQLRSTableGroupVizualisation >> initialize [

	super initialize.
	tableBuilder := SQLRSTableBuilder new.
	shoudBeCollapsed := false
]

{ #category : #accessing }
SQLRSTableGroupVizualisation >> shoudBeCollapsed [

	^ shoudBeCollapsed value
]

{ #category : #accessing }
SQLRSTableGroupVizualisation >> shoudBeCollapsed: anObject [

	shoudBeCollapsed := anObject
]

{ #category : #accessing }
SQLRSTableGroupVizualisation >> sourceGroup [

	^ sourceGroup
]

{ #category : #accessing }
SQLRSTableGroupVizualisation >> sourceGroup: anObject [

	sourceGroup := anObject
]

{ #category : #accessing }
SQLRSTableGroupVizualisation >> tableBuilder [

	^ tableBuilder
]

{ #category : #accessing }
SQLRSTableGroupVizualisation >> tableBuilder: anObject [

	tableBuilder := anObject
]
