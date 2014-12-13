require "./simple/inspect"

class Boolean < Struct.new(:value)
  include Inspect

  def to_s
    value.to_s
  end

  def reducible?
    false
  end
end