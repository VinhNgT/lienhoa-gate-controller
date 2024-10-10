class JsonUtils {
  static Map<String, dynamic> deepMerge(
    Map<String, dynamic> object,
    Map<String, dynamic> other, {
    bool includeIfNull = false,
  }) {
    return {
      ...object,
      for (final entry in other.entries)
        if (entry.value != null || includeIfNull)
          entry.key: object[entry.key] is Map<String, dynamic> &&
                  entry.value is Map<String, dynamic>
              ? deepMerge(
                  object[entry.key],
                  entry.value,
                  includeIfNull: includeIfNull,
                )
              : entry.value,
    };
  }
}
