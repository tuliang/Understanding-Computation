require "./simple/inspect"

class Multiply < Struct.new(:left, :right)
  include Inspect
  
  def to_s
    "#{left} * #{right}"
  end

  def reducible?
    true
  end

  def reduce(environment)
    if left.reducible?
      Multiply.new(left.reduce(environment), right)
    elsif right.reducible?
      Multiply.new(left, right.reduce(environment))
    else
      Number.new(left.value * right.value)
    end
  end
end