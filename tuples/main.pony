actor Main
  // Also demonstrating how Unsigned/Signed are union types
  var x: (String, Unsigned)
  var y: (String, Signed)
  new create(env: Env) =>
    let a: USize = 1
    let b: ISize = -1
    x = ("x", a)
    y = ("y", b)
    env.out.print(x._1 + " has num " + x._2.string())
    env.out.print(y._1 + " has num " + y._2.string())
