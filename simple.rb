require "./simple/number"
require "./simple/add"
require "./simple/multiply"
require "./simple/boolean"
require "./simple/less_than"
require "./simple/variable"
require "./simple/do_nothing"
require "./simple/assign"
require "./simple/if"
require "./simple/sequence"
require "./simple/machine"

Machine.new(
  Sequence.new(
    Assign.new(:x, Add.new(Number.new(1), Number.new(1))),
    Assign.new(:y, Add.new(Variable.new(:x), Number.new(3)))
  ),
  {}
).run