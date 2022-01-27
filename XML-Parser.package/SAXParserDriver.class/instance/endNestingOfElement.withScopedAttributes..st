private
endNestingOfElement: anElementName withScopedAttributes: anAttributeDictionary
	| base |

	base :=
		anAttributeDictionary
			at: 'xml:base'
			ifAbsent: [
				self elementNester endElement: anElementName.
				^ self].
	(self elementNester
		endElement: anElementName;
		scopedAttributeAt: 'xml:base') = base
			ifFalse: [self removeURI: base].