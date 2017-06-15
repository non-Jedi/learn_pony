actor Main
  new create(env: Env) =>
    try
      if false then env.out.print("exception not raised")
      else error end
    else
      env.out.print("exception was raised")
    end
