interface HasName
  fun name(): String

interface HasAge
  fun age(): USize

interface HasAddress
  fun address(): String

type Person is (HasName & HasAge & HasAddress)

class Bob
  fun name(): String => "Bob"
  fun age(): USize => 18
  fun address(): String => "1000 Place Street"

actor Main
  let p: Person
  new create(env: Env) =>
    p = Bob
    env.out.print(p.name())
    env.out.print(p.age().string())
    env.out.print(p.address().string())
