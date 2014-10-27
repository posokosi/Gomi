class A
  def initialize(x)
    @x = x
  end

  def m
    @x
  end
  
  def method_missing(name, *args)
    p name
    p args
    super.method_missing(name, args)
  end

end

a = A.new 1

a.nla 1,1,nil,"Wewe"
