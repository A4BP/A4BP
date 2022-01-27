initialization
setSAXHandler: aHandler
	saxHandler := aHandler.
	elementNester := self elementNesterClass new.
	externalSubsetURI := ''.
	isStandalone := false.
	hasUnhandledReservedAttributes := false.