class Pair //is Stringable
  var x: USize
  var y: USize

  new create(x': USize, y': USize) =>
    x = x'
    y = y'

  fun add(other: Pair): Pair =>
    Pair(x + other.x, y + other.y)

/*
  fun string(): String =>
    // This doesn't work for some reason related to ref capabilities. Revisit
    x.string() + " and " + y.string()
*/

actor Main
  new create(env: Env) =>
    let x = Pair(1, 2)
    let y = Pair(3, 4)
    let z = x + y
    env.out.print(z.x.string() + " and " + z.y.string())
