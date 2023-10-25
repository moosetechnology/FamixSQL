Extension { #name : #FamixSQLTableGroup }

{ #category : #'*SQL-Model-Extension' }
FamixSQLTableGroup >> inspectionTable: aBuilder [

	<inspectorPresentationOrder: -1 title: 'MCD Tables'>
	^ SpRoassal3InspectorPresenter new
		  canvas: (SQLRSTableGroupBuilder new
				   collapseAll;
				   sourceGroup: self;
				   build;
				   canvas);
		  yourself
]
