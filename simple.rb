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
require "./simple/while"
require "./simple/machine"

Machine.new(
  While.new(
    LessThan.new(Variable.new(:x), Number.new(5)),
    Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3)))
  ),
  { x: Number.new(1) }
).run