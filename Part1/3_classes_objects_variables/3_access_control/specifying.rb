class MyClass
    end
  protected  # subsequent methods will be 'protected'
    def method2  # will be 'protected'
      #...
    end
  private  # subsequent methods will be 'private'
    def method3 # will be private
      #...
    end
  public  # subsequent methods will be 'public'
    def method4 # will be public
      #...
    end
end 
