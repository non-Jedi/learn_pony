actor Main
	new create(env: Env) =>
		let x = object
			let s: String = "whoa dude"
		end
		env.out.print(x.s)
