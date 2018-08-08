#!/usr/bin/ruby

# list methods which aren't in superclass
def local_methods(obj = self)
  (obj.methods - obj.class.superclass.instance_methods).sort
end

def find_max
  User.find_by_email('max@beek.io') || User.find_by_email("maxhm10@gmail.com")
end

def catch_exception
  yield
rescue => e
  binding.pry
end
