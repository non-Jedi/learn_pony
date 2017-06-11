primitive Red    fun apply(): String => "red"
primitive Blue   fun apply(): String => "blue"
primitive Yellow fun apply(): String => "yellow"

type Color is (Red | Blue | Yellow)

primitive ColorList
  fun tag apply(): Array[Color] =>
    [Red; Blue; Yellow]

actor Main
  new create(env: Env) =>
    for color in ColorList().values() do
      env.out.print(color())
    end
