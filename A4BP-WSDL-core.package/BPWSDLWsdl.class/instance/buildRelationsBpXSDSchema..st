build-relations
buildRelationsBpXSDSchema: aBPXSDSchema
	"find if the xsdSChema have the nameSpace in the reference of the wsdl"
	[ 
	nsNameSpaces at: aBPXSDSchema targetNamespace.
	bpRelations addRelation: aBPXSDSchema ]
		on: Error
		do: [ 
	"when the name space don found in the lst of namespaces is posible that have bean import as a alias in the types"
			self wsdlDefinition buildRelationsBpXSDSchema: aBPXSDSchema.
			 ]