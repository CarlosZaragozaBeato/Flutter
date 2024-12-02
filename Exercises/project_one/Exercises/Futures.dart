void main() {
  /* final myFuture = Future<int>.delayed(
    Duration(seconds: 0),
    () => 42,
  )
      .then(
        (value) => print('Value: $value'),
      )
      .catchError(
        (error) => print('Error: $error'),
      )
      .whenComplete(() => print('Future is Complete'));
  print('After the future');*/

  /* print('--------------------------------');

  }

  main();
*/

  try {
    final value = await Future<int>.delayed(
      Duration(seconds: 1),
      () => 55,
    );//Future delayed
    print('Value $value');
    print('After the future');
  } catch (error) {
    print(error);
  } finally {
    print("Completed");
  }
}
