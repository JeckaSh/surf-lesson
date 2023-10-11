class Person {
  final String name;
  int age;

  Person(this.name, this.age);
}

abstract class Game {
  String game;
  String team;
  int gamesPlayed;

  Game(this.game, this.team, this.gamesPlayed);
}

abstract class Role {
  String role;

  Role(this.role);
}

abstract class Tactics implements Role {
  String tacticDescription;

  @override
  String role;

  Tactics(this.role, this.tacticDescription);
}

abstract class TrainerInfo {
  String titleDescription;
  int trophy;

  TrainerInfo(this.titleDescription, this.trophy);
}

class Player extends Person implements Game, Tactics {
  @override
  int gamesPlayed;

  @override
  String game;

  @override
  String team;

  @override
  String role;

  @override
  String tacticDescription;

  Player(super.name, super.age, this.game, this.team, this.gamesPlayed,
      this.role, this.tacticDescription);

  String toString() {
    var about = '''\n
    Игрок: $name || Возраст: $age
    Дисциплина: $game || Команда: $team || Кол-во сыгранных матчей: $gamesPlayed
    Роль: $role
    Стиль игры: $tacticDescription
    ''';
    return about;
  }
}

class Trainer extends Person implements Game, TrainerInfo {
  @override
  String game;

  @override
  int gamesPlayed;

  @override
  String team;

  @override
  String titleDescription;

  @override
  int trophy;

  Trainer(super.name, super.age, this.game, this.team, this.gamesPlayed,
      this.trophy, this.titleDescription);

  String toString() {
    var about = '''\n
    Тренер: $name || Возраст: $age
    Дисциплина: $game || Команда: $team
    Матчей под его руководством: $gamesPlayed || Кол-во трофеев: $trophy
    Особенности тренировок: $titleDescription
    ''';
    return about;
  }
}

void main() {
  var jecka = Player('Jecka', 27, 'Counter-Strike', 'NAVI', 47, 'Защита',
      'Закладывает бомбу, ищет укромное местечко и поджидает противника');
  var trainer = Trainer('Alex', 33, 'Counter-Strike', 'Spirit', 24, 8,
      'Жетский буткемп по 8 часов в день 6 дней в неделю');
  print(jecka);
  print(trainer);
}
