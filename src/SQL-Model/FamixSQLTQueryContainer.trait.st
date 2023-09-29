"
I am an abstract super class for behavioural entities that can contain queries in their source code.
"
Trait {
	#name : #FamixSQLTQueryContainer,
	#category : #'SQL-Model-Traits'
}

{ #category : #meta }
FamixSQLTQueryContainer classSide >> annotation [

	<FMClass: #TQueryContainer super: #Object>
	<package: #'SQL-Model'>
	<generated>
	^ self
]
