require_relative "simple/number"
require_relative "simple/add"
require_relative "simple/multiply"
require_relative "simple/boolean"
require_relative "simple/less_than"
require_relative "simple/machine"


Machine.new(
  LessThan.new(
    Number.new(5), 
    Add.new(Number.new(2), Number.new(1))
  )
).run

