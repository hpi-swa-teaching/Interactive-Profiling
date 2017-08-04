private
parseResultTimeFrom: anIndentingListItemMorph

	^ (anIndentingListItemMorph contents 
		copyFrom: 'Time: ' size + 1 
		to: (anIndentingListItemMorph contents size - 'ms' size)) asInteger