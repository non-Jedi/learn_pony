primitive Utils
  fun print_stuff(env: Env) =>
    env.out.print("stuff")

actor Main
  new create(env: Env) =>
    Utils.print_stuff(env)
