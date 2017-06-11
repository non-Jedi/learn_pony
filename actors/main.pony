actor Aardvark
  let name: String
  let env: Env
  var _hunger_level: USize = 10

  new create(name': String, env': Env) =>
    name = name'
    env = env'

  be eat(amount: USize) =>
    _hunger_level = _hunger_level - amount.min(_hunger_level)
    env.out.print("Aardvark " + name + " now has hunger of " + _hunger_level.string())

  be keep_eating(amount: USize, main: Main) =>
    eat(amount)
    main.check(_hunger_level, this)

class Anteater
  let name: String
  let env: Env
  var _hunger_level: USize = 10

  new create(name': String, env': Env) =>
    name = name'
    env = env'

  fun ref eat(amount: USize) =>
    _hunger_level = _hunger_level - amount.min(_hunger_level)
    env.out.print("Anteater " + name + " now has a hunger of " + _hunger_level.string())

  fun ref keep_eating(amount: USize) =>
    eat(amount)
    if _hunger_level > 0 then
      keep_eating(1)
    end

actor Main
  new create(env: Env) =>
    var x: Array[Aardvark] = [Aardvark("steve", env); Aardvark("megan", env); Aardvark("larry", env)]
    for a in x.values() do
      a.keep_eating(1, this)
    end
    var y: Array[Anteater] = [Anteater("reggie", env); Anteater("colin", env); Anteater("bob", env)]
    for a in y.values() do
      a.keep_eating(1)
    end

  be check(hunger_level: USize, a: Aardvark) =>
    if hunger_level > 0 then
      a.keep_eating(1, this)
    end
