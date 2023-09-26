Extension { #name : #ODBCConnection }

{ #category : #'*SQL-Model-Importer-ODBC' }
ODBCConnection >> queryForeignKeysOf: aTableNameString inSchema: aSchemaName [
	"Private - Answer the DBResultSet for the standard query SQLForeignKeys()
	where szFkTableName is set to aTableNameString."

	| stmt answer |
	stmt := ODBCForeignKeysStatement parent: self.
	stmt foreignTableName: aTableNameString.
	stmt schemaName: aSchemaName.
	answer := stmt results asArray.
	stmt free.
	^answer
]

{ #category : #'*SQL-Model-Importer-ODBC' }
ODBCConnection >> queryPrimaryKeysOf: aString inSchema: aSchemaName [

	"Answer a list of the primary key column names in the
	table named aString"

	| stmt answer |
	stmt := ODBCPrimaryKeysStatement parent: self.
	stmt tableName: aString.
	stmt schemaName: aSchemaName.
	answer := stmt results asArray.
	stmt free.
	^ answer
]
