action
calculateLstFrom: aCollection
	aCollection do: [ :v | v accept: self ]