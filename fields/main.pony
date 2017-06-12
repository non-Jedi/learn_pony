actor Wombat
  var age: USize
  new create(age': USize) =>
    age = age'

actor Main
  new create(env: Env) =>
    var w = Wombat.create(10)
    // doesn't compile; can't see fields through a tag, and actor vars are always tags.
    env.out.print(w.age.string())
