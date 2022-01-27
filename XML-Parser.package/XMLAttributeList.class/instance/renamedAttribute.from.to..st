notifying
renamedAttribute: anAttribute from: anOldName to: aNewName
	self attributesByName
		removeKey: anOldName;
		at: aNewName ifPresent: [:attribute | self remove: attribute];
		at: aNewName put: anAttribute