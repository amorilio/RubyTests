class MyRubyClass
  attr_accessor :ilia
  
  def initialize 
   @ilia = "initialized"
  end
    
  def foo (val=nil)
    if (val != nil)
      @ilia=val
    end
    puts @ilia
  end  

  def foo1 (*val)
    puts "Parameters Length : #{val.length}"
    puts "Parameters Size : " + val.size.to_s
    if val.length > 0
      @ilia=val[0]
    end
    puts @ilia
  end
  
end

m=MyRubyClass::new
m.foo
m.ilia = "changed by setter"
puts m.ilia
m.foo
m.foo "kuku"

m.ilia = "Undefined"
m.foo1
m.foo1("kuku2")

#print 32.prev <-- will cause error because prev function of Fixnum class is not defined yet
class Fixnum
  def prev
    self-1
  end
end
print 32.prev # <-- here should print 31

a = Array.new
a.sort