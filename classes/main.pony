class Wombat
  let name: String
  var _hunger_level: USize
  var _thirst_level: USize = 1

  new create(name': String) =>
    name = name'
    _hunger_level = 0

  new hungry(name': String, hunger': USize) =>
    name = name'
    _hunger_level = hunger'

  fun hunger(): USize => _hunger_level

  fun ref set_hunger(hunger': USize): USize => _hunger_level = hunger'

actor Main
  new create(env: Env) =>
    // instantiate wombat objects using different constructors
    var w1 = Wombat.create("francis")
    var w2 = Wombat.hungry("Steve", 5)
    // show starting hunger of wombats
    env.out.print("francis has a hunger of " + w1.hunger().string())
    env.out.print("Steve has a hunger of " + w2.hunger().string())
    // demonstrate destructive read returned by set_hunger
    env.out.print("francis is losing the hunger value of " + w1.set_hunger(16).string())
    // show that the value of hunge has now changed
    env.out.print("francis now has a hunger of " + w1.hunger().string())
