require_relative "simple/number"
require_relative "simple/add"
require_relative "simple/multiply"
require_relative "simple/boolean"
require_relative "simple/less_than"
require_relative "simple/variable"
require_relative "simple/machine"


Machine.new(
  Add.new(Variable.new(:x), Variable.new(:y)),
  { x: Number.new(3), y: Number.new(4) }
).run

