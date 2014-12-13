require "./simple/inspect"

class Sequence < Struct.new(:first, :second)
  include Inspect

  def to_s
    "#{first}; #{second}"
  end

  def reducible?
    true
  end

  def reduce(environment)
    case first
    when DoNothing.new
      [second, environment]
    else
      reduced_first, reduced_environment = first.reduce(environment)
      [Sequence.new(reduced_first, second), reduced_environment]
    end
  end
end