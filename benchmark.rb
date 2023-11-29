require 'benchmark/ips'
require 'fast_float_string'

# p 43.504439999999988.to_s
# p FastFloatString.convert(43.504439999999988)

Benchmark.ips do |x|
  x.report('Float#to_s') { 43.504439999999988.to_s }
  x.report('FastFloatString') { FastFloatString.convert(43.504439999999988) }

  x.compare!
end
