require "./simple/inspect"

class Variable < Struct.new(:name)
  include Inspect
  
  def to_s
    name.to_s
  end

  def reducible?
    true
  end

  def reduce(environment)
    environment[name]
  end
end