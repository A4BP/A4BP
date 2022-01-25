as yet unclassified
fillElementsIn: aBPObj from: document
	"The argument is a complete description of an XML process"

	|  xmlDescPlnkRole |
	
	"****partnerlinkExample****"
	"
	<plnk:partnerLinkType name="	"getIncomingMessageFromJMSWSDL"	">
      <!-- A partner link type is automatically generated when a new port type is added. Partner link types are used by BPEL processes.  In a BPEL process, a partner link represents the interaction between the BPEL process and a partner service. Each partner link is associated with a partner link type. A partner link type characterizes the conversational relationship between two services. The partner link type can have one or two roles.-->
        <plnk:role name="	"JMSInPortTypeRole"	" portType="	"tns:JMSInPortType"	"/>
    </plnk:partnerLinkType>"
	aBPObj aName: (document attributeAt:'name').
	aBPObj portType: (document attributeAt:'portType').
	^ aBPObj