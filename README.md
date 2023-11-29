# FastFloatString

This is proof of concept code for a fast float string conversion using https://github.com/night-shift/fpconv

# Benchmark

```
$ ruby -v benchmark.rb
ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x86_64-linux]
Warming up --------------------------------------
          Float#to_s   247.825k i/100ms
     FastFloatString     1.052M i/100ms
Calculating -------------------------------------
          Float#to_s      2.549M (± 0.7%) i/s -     12.887M in   5.056726s
     FastFloatString     10.472M (± 0.7%) i/s -     52.611M in   5.024229s

Comparison:
     FastFloatString: 10472007.8 i/s
          Float#to_s:  2548594.9 i/s - 4.11x  slower
```

- OS: Manjaro Linux x86_64
- Kernel: 6.6.2-1-MANJARO
- CPU: AMD Ryzen 9 7940HS
- Compiler: gcc 13.2.1
- Ruby: ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x86_64-linux]
