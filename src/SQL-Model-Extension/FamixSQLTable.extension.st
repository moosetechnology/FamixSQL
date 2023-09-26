Extension { #name : #FamixSQLTable }

{ #category : #'*SQL-Model-Extension' }
FamixSQLTable >> inspectionTable: aBuilder [

	<inspectorPresentationOrder: -1 title: 'MCD Table'>
	| canvas renderer |
	canvas := RSCanvas new.
	renderer := SQLRSTableBuilder new.
	canvas := HSimpleVisualizationBuilder new
		          rootNode: (HNode new
				           add: (renderer shapeFor: self);
				           yourself);
		          build.
	canvas zoomToFit.
	^ SpRoassal3InspectorPresenter new
		  canvas: canvas;
		  yourself
]
