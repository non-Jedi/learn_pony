primitive Utils
  fun factorial(x: ISize): ISize ? =>
    if x < 0 then error end
    if x == 0 then
      1
    else
      x * factorial(x - 1)
    end

actor Main
  new create(env: Env) =>
    try
      let y: ISize = Utils.factorial(-1)
    else
      env.out.print("Calling factorial on a negative raises an error")
    end

    try
      let z: ISize = Utils.factorial(5)
      env.out.print("The factorial of 5 is " + z.string())
    else
      env.out.print("This shouldn't print")
    end
