interface HasName
  fun name(): String

class Bob
  fun name(): String => "Bob"

actor Main
  new create(env: Env) =>
    let x: HasName = Bob
    env.out.print(x.name())
