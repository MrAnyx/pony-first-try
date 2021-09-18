class User
   let name: String
   let age: I8
   var x: U8 = 0
   var y: U8 = 0

   new create(name': String, age': I8) =>
      name = name'
      age = age'

   fun ref moveUp(): U8 =>
      y - U8(1)

   fun ref moveDown(): U8 =>
      y + U8(1)

   fun ref moveRight(): U8 =>
      x + U8(1)

   fun ref moveLeft(): U8 =>
      x - U8(1)

   fun toString(): String =>
      "Hello, my name is " + name + " and i'm " + age.string() + " years old"

   fun getPosition(): String => 
      "x -> " + x.string() + " | y -> " + y.string()