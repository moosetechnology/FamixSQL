"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestSQLModelGenerator,
	#superclass : #PackageManifest,
	#category : #'SQL-Model-Generator-Manifest'
}

{ #category : #'code-critics' }
ManifestSQLModelGenerator class >> ruleLongMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#FamixSQLGenerator)) #'2023-09-30T12:52:19.058676+02:00') )
]
