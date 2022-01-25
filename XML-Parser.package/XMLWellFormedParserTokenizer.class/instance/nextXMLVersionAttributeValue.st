tokenizing
nextXMLVersionAttributeValue
	| quote nextChar length isValid |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedXMLVersionValueStartButGot: quote].

	length := 0.
	isValid := true.
	xmlDeclarationStream reset.
	[(nextChar := streamReader next) == nil
		or: [(VersionNumChars includes: nextChar) not]]
		whileFalse: [
			xmlDeclarationStream nextPut: nextChar.
			length := length + 1.
			isValid
				ifTrue: [isValid := (length == 2) == (nextChar == $.)]].
	(isValid
		and: [length >= 3])
		ifFalse: [
			self errorExpectedXMLVersionNumberButGot:
				xmlDeclarationStream contents].

	nextChar == quote
		ifFalse: [
			self
				errorExpectedXMLVersionValueEnd: quote
				butGot: nextChar].

	^ xmlDeclarationStream contents.