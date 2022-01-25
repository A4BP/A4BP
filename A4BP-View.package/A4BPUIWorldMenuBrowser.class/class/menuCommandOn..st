go
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'A4BP')
			icon: A4BPUIIcons mainIcon;
			label:'A4BP Panel';
			help: 'Browse and create diferent kind of analisis in diferent SOA context base on '.
	(aBuilder item: #'A4BPMainPanel')
			icon: A4BPUIIcons mainIcon;
			parent: #A4BP;
			action:[self go];
			label:'A4BP Panel';
			help: 'Principal main panel'.
	(aBuilder item: #'Extras')
			parent: #A4BP;
			label:'Extras';
			help: 'Browse to view aditional information about the system view'.
	