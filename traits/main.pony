trait Named
  fun name(): String => "Bob"

class Bob is Named

class Larry is Named
  fun name(): String => "Larry"

actor Main
  new create(env: Env) =>
    let b = Bob
    let l = Larry
    env.out.print(b.name())
    env.out.print(l.name())
