documentor := FamixUMLDocumentor new.
documentor
    model: FamixSQLModel;
    beWithStubs;
    generate.

'famixsql.puml' asFileReference writeStreamDo: [ :stream |
    FamixUMLPlantUMLBackend new
        outputStream:  stream;
        export: documentor umlEntities.
].

Smalltalk snapshot: false andQuit: true

