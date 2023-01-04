# FastFloatString

This is proof of concept code for a fast float string conversion using https://github.com/night-shift/fpconv

# Benchmark

```
$ ruby -v benchmark.rb
ruby 3.2.0 (2022-12-25 revision a528908271) [arm64-darwin22]
Warming up --------------------------------------
               Float   122.360k i/100ms
     FastFloatString   784.225k i/100ms
Calculating -------------------------------------
               Float      1.223M (± 0.6%) i/s -      6.118M in   5.003705s
     FastFloatString      7.890M (± 0.4%) i/s -     39.995M in   5.068963s

Comparison:
     FastFloatString:  7890395.4 i/s
               Float:  1222742.9 i/s - 6.45x  (± 0.00) slower
```

- macOS 13.1
- Apple M1 Max
- Apple clang version 14.0.0 (clang-1400.0.29.202)
- ruby 3.2.0 (2022-12-25 revision a528908271) [arm64-darwin22]
