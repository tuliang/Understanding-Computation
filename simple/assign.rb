require "./simple/inspect"

class Assign < Struct.new(:name, :expression)
  include Inspect

  def to_s
    "#{name} = #{expression}"
  end

  def reducible?
    true
  end

  def reduce(environment)
    if expression.reducible?
      [Assign.new(name, expression.reduce(environment)), environment]
    else
      [DoNothing.new, environment.merge({ name => expression })]
    end
  end
end