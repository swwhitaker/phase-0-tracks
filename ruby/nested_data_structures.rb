gallery = {
		first_floor: {
			media: [
				'sculpture', 
				'pottery',
				'mixed'
			],
			artists_represented: 12,
			rooms: 7
		},
		second_floor: {
			media: [
				'photography', 
				'mixed'
			],
			artists_represented: 8,
			rooms: 4
		},
		third_floor: {
			media: [
				'painting', 
				'woodprints'
			],
			artists_represented: 21,
			rooms: 8
		}
}

p gallery[:second_floor][:media][1]

p gallery[:first_floor][:artists_represented]

p gallery[:third_floor][:rooms]

p gallery[:third_floor][:media][0]