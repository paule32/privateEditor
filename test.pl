// This File was created automatically
// Press F2-key to execute it.

# define TESTMACRO 42         // macro for: number
# define MACRO2    "string"   // macro for: string

** End of Header
parameter bModal
local f = new Form1()
if bModal == .T.
  f.open()
endif

class foo of form
   with ( this )
   endwith

   this.container  = new container ( this )
   this.pushbutton = new pushbutton( this.container)
   with (this.pushbutton)
     foo.xxx = 4
     bool = .F.
     fatz = "sssss"
     futz = 'xxxx'
     baz = [ \"dddd 22 ]
   endwith

   procedure dummy1(p1,p2,p3)
   return

   function dummy2(p1)
     baz = 32
   return ("foobar" + ddd + "goo")

endclass

