require "./simple/number"
require "./simple/add"
require "./simple/multiply"
require "./simple/boolean"
require "./simple/less_than"
require "./simple/variable"
require "./simple/do_nothing"
require "./simple/assign"
require "./simple/if"
require "./simple/machine"


Machine.new(
  If.new(
    Variable.new(:x),
    Assign.new(:y, Number.new(1)),
    Assign.new(:y, Number.new(2))
  ),
  { x: Boolean.new(true) }
).run