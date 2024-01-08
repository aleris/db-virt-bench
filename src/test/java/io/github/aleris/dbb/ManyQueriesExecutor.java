package io.github.aleris.dbb;

import java.util.List;
import java.util.Optional;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

public class ManyQueriesExecutor implements AutoCloseable {
  private final Database database;
  private final ExecutorService threadExecutor;

  public ManyQueriesExecutor(final Database database, final ExecutorService threadExecutor) {
    this.database = database;
    this.threadExecutor = threadExecutor;
  }

  public List<Optional<Organism>> parallelFindByCode(final List<String> codes) {
    final var callables = codes.stream()
        .map(code ->
            (Callable<Optional<Organism>>) () -> database.findByCode(code)
        )
        .toList();
    return invokeAllAndGet(callables);
  }

  public List<List<OrganismViewCountBySpecies>> parallelIncrementViewCountsAndQueryUpdated(
      final List<String> codes
  ) {
    final var callables = codes.stream()
        .map(code ->
            (Callable<List<OrganismViewCountBySpecies>>) () -> {
              database.incrementViewCount(code);
              return database.queryGenusViewCountUpdatedRecently(10);
            }
        )
        .toList();
    return invokeAllAndGet(callables);
  }

  private <T> List<T> invokeAllAndGet(final List<Callable<T>> callables) {
    try {
      final var futures = threadExecutor.invokeAll(callables);
      return futures.stream()
          .map(future -> {
            try {
              return future.get();
            } catch (InterruptedException | ExecutionException e) {
              throw new RuntimeException(e);
            }
          })
          .toList();
    } catch (InterruptedException e) {
      throw new RuntimeException(e);
    }
  }

  @Override
  public void close() {
    threadExecutor.close();
  }
}
