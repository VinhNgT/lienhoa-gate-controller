extension ListX<E> on List<E> {
  /// Separates the elements of the list with the specified separator.
  ///
  /// The [separator] is inserted between each pair of elements in the list.
  ///
  /// Example:
  /// ```dart
  /// List<int> numbers = [1, 2, 3, 4];
  /// List<int> separatedNumbers = numbers.separated(0);
  /// print(separatedNumbers); // Output: [1, 0, 2, 0, 3, 0, 4]
  /// ```
  ///
  /// Returns a new list with the elements separated by the [separator].
  List<E> separated(E separator) {
    return fold(
      [],
      (previousValue, element) {
        if (previousValue.isNotEmpty) {
          previousValue.add(separator);
        }
        previousValue.add(element);
        return previousValue;
      },
    );
  }
}
