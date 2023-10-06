"
**Test titre**
"
Class {
	#name : #BaselineOfFamixSQL,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixSQL
}

{ #category : #baselines }
BaselineOfFamixSQL >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfFamixSQL >> customProjectAttributes [

	^ RPackageOrganizer default packages
		  detect: [ :package | package name = 'BaselineOfFamix' ]
		  ifFound: [ #(  ) ]
		  ifNone: [ #( #NeedsMoose ) ]
]

{ #category : #baselines }
BaselineOfFamixSQL >> defineDependencies: spec [

	spec
		baseline: 'ODBC'
		with: [
		spec repository: 'github://pharo-rdbms/Pharo-ODBC:master/src' ].
	self famix: spec
]

{ #category : #baselines }
BaselineOfFamixSQL >> defineGroups: spec [
]

{ #category : #baselines }
BaselineOfFamixSQL >> definePackages: spec [

	spec
		package: 'SQL-Model';
		package: 'SQL-Model-Extension'
		with: [ spec requires: #( 'SQL-Model' 'SQL-Model-Vizualisation' ) ];
		package: 'SQL-Model-Generator';
		package: 'SQL-Model-Importer-CSV-Tests'
		with: [ spec requires: #( 'SQL-Model-Importer-CSV' ) ];
		package: 'SQL-Model-Importer'
		with: [ spec requires: #( 'SQL-Model-Importer-Tests' ) ];
		package: 'SQL-Model-Importer-Tests';
		package: 'SQL-Model-Importer-CSV'
		with: [ spec requires: #( 'SQL-Model-Importer' ) ];
		package: 'SQL-Model-Importer-ODBC'
		with: [ spec requires: #( 'ODBC' 'SQL-Model-Importer' ) ];
		package: 'SQL-Model-Vizualisation'
		with: [ spec requires: #( 'SQL-Model' ) ]
]

{ #category : #baselines }
BaselineOfFamixSQL >> famix: spec [

	spec for: #NeedsMoose do: [
		| famixVersion |
		famixVersion := 'development'.
		spec
			for: { 'pharo10.x' }
			do: [ famixVersion := 'v1.0.6' "Famix version for Moose 10" ].

		spec baseline: 'Famix' with: [
			spec repository:
				('github://moosetechnology/Famix:{1}/src' format: { famixVersion }) ] ]
]
