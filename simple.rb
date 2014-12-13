require "./simple/number"
require "./simple/add"
require "./simple/multiply"
require "./simple/boolean"
require "./simple/less_than"
require "./simple/variable"
require "./simple/do_nothing"
require "./simple/assign"
require "./simple/machine"


Machine.new(
  Assign.new(:x, Add.new(Variable.new(:x), Number.new(1))),
  { x: Number.new(2) }
).run

