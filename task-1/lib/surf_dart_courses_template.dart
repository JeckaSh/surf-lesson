enum Countries { brazil, russia, turkish, spain, japan }

class Territory {
  int areaInHectare;
  List<String> crops;
  List<AgriculturalMachinery> machineries;

  Territory(
    this.areaInHectare,
    this.crops,
    this.machineries,
  );
}

class AgriculturalMachinery {
  final String id;
  final DateTime releaseDate;

  AgriculturalMachinery(
    this.id,
    this.releaseDate,
  );

  // Переопределяем оператор "==", что бы сравнивать объекты по значению
  @override
  bool operator ==(Object? other) {
    if (other is! AgriculturalMachinery) return false;
    if (other.id == id && other.releaseDate == releaseDate) return true;

    return false;
  }

  @override
  int get hashCode => id.hashCode ^ releaseDate.hashCode;
}

final mapBefore2010 = <Countries, List<Territory>>{
  Countries.brazil: [
    Territory(
      34,
      ['Кукуруза'],
      [
        AgriculturalMachinery(
          'Трактор Степан',
          DateTime(2001),
        ),
        AgriculturalMachinery(
          'Культиватор Сережа',
          DateTime(2007),
        ),
      ],
    ),
  ],
  Countries.russia: [
    Territory(
      14,
      ['Картофель'],
      [
        AgriculturalMachinery(
          'Трактор Гена',
          DateTime(1993),
        ),
        AgriculturalMachinery(
          'Гранулятор Антон',
          DateTime(2009),
        ),
      ],
    ),
    Territory(
      19,
      ['Лук'],
      [
        AgriculturalMachinery(
          'Трактор Гена',
          DateTime(1993),
        ),
        AgriculturalMachinery(
          'Дробилка Маша',
          DateTime(1990),
        ),
      ],
    ),
  ],
  Countries.turkish: [
    Territory(
      43,
      ['Хмель'],
      [
        AgriculturalMachinery(
          'Комбаин Василий',
          DateTime(1998),
        ),
        AgriculturalMachinery(
          'Сепаратор Марк',
          DateTime(2005),
        ),
      ],
    ),
  ],
};

final mapAfter2010 = {
  Countries.turkish: [
    Territory(
      22,
      ['Чай'],
      [
        AgriculturalMachinery(
          'Каток Кирилл',
          DateTime(2018),
        ),
        AgriculturalMachinery(
          'Комбаин Василий',
          DateTime(1998),
        ),
      ],
    ),
  ],
  Countries.japan: [
    Territory(
      3,
      ['Рис'],
      [
        AgriculturalMachinery(
          'Гидравлический молот Лена',
          DateTime(2014),
        ),
      ],
    ),
  ],
  Countries.spain: [
    Territory(
      29,
      ['Арбузы'],
      [
        AgriculturalMachinery(
          'Мини-погрузчик Максим',
          DateTime(2011),
        ),
      ],
    ),
    Territory(
      11,
      ['Табак'],
      [
        AgriculturalMachinery(
          'Окучник Саша',
          DateTime(2010),
        ),
      ],
    ),
  ],
};

// решение задания

void main() {
  final totalMap = {...mapBefore2010, ...mapAfter2010};
  List<AgriculturalMachinery> allMachine = [];

  totalMap.values.forEach((Territory) {
    Territory.forEach((AgriculturalMachinery) {
      allMachine.addAll(AgriculturalMachinery.machineries);
    });
  });

  // исключить повторения одинаковых
  Set<AgriculturalMachinery> uniqueMachine = allMachine.toSet();
  List<AgriculturalMachinery> result = uniqueMachine.toList();

  result.sort((a, b) => a.releaseDate.compareTo(b.releaseDate));

  // вычислить средний возраст всей техники
  var totalAge = 0;
  var currentDate = DateTime.now().year;

  result.forEach((machinaries) {
    final age = currentDate - machinaries.releaseDate.year;
    totalAge = totalAge + age;
  });
  final averageAge = totalAge / result.length;

  // вычислить возраст 50% старой техники

  List<AgriculturalMachinery> oldestMachine =
      result.sublist(0, result.length ~/ 2);

  var totalOldtAge = 0;
  oldestMachine.forEach((machinaries) {
    final age = currentDate - machinaries.releaseDate.year;
    totalOldtAge = totalOldtAge + age;
  });
  final averageOldAge = totalOldtAge / oldestMachine.length;

  print('Средний возраст всей техники: $averageAge');
  print('Средней возраст 50% самой старой техники: $averageOldAge');
}
