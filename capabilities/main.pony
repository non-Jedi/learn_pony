class ref Wombat
	let x: USize
	let y: USize

	new create(x': USize, y': USize) =>
		x = x'
		y = y'

	fun add(): USize =>
		x + y

actor Adder
	let z: USize


