parser
fillMeFrom: document
	"bpVariable variable bpPartnerLink partnerLink bpPortType portType operation bpActivity"

	variable := document attributeAt: BPParserTagsXMLRef atrVariable.
	partnerLink := document attributeAt: BPParserTagsXMLRef atrPartnerLink.
	portType := document attributeAt: BPParserTagsXMLRef atrPortType.
	operation := document attributeAt: BPParserTagsXMLRef atrOperation