
// This use statement will automatically import all files from the objects folder
use "objects"


actor Main
  """
  The Main actor is kind of like the Main method in C or Java.
  Your whole program is wrapped into this actor
  """
  new create(env: Env) =>
    env.out.print("bonjour")
    try
      env.out.print(factorial(5)?.string())
    end
    // let user = User("John", 56)
    // env.out.print(user.toString())
    // user.moveLeft()
    // env.out.print(user.getPosition())

  fun factorial(x: I32): I32 ? =>
    if x < 0 then error end
    if x == 0 then
      1
    else
      x * factorial(x - 1)?
    end