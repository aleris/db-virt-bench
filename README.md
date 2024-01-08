# Benchmark Database Access with Java 21 Virtual Threads

See the [blog post](https://adi.earth/posts/database-virtual-threads-benchmark/) for discussion and results.

## Run the benchmark

Set Java runtime to version 21.

Run the benchmark with:
```
./gradlew clean jmh
```

Modify `OPERATIONS_PER_INVOCATION` in `DatabaseBenchmark` to change the number of queries executed in each iteration.

Modify `DatabaseBenchmark#setupTrial` to run with other latency or pool sizes.
