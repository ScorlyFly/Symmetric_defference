class SymmetricSet {
  static Set multiSymmetricDifference(
    List<Set> sets, {
    bool intersection = false,
    int intersectionElem = 0,
    String intersectionElemMinMax = "min",
  }) {
    final frequency = <dynamic, int>{};

    for (Set currentSet in sets) {
      for (final element in currentSet) {
        frequency[element] = (frequency[element] ?? 0) + 1;
      }
    }

    if (intersection) {
      // Находим общие элементы (есть во всех множествах) intersection

      final allSetsCount = (intersectionElem > 0)
          ? intersectionElem
          : sets.length;

      Set set = {};
      switch (intersectionElemMinMax) {
        case "min":
          set = {
            for (final entry in frequency.entries)
              if (entry.value == allSetsCount) entry.key,
          };
        case "max":
          set = {
            for (final entry in frequency.entries)
              if (entry.value >= allSetsCount) entry.key,
          };
      }
      return set;
    } else {
      return {
        for (final entry in frequency.entries)
          if (entry.value == 1) entry.key,
      };
    }
  }
}
