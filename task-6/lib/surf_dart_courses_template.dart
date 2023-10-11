class Article {
  int id;
  String type;
  String title;
  int price;
  int quantity;

  Article(this.id, this.type, this.title, this.price, this.quantity);
}

abstract class Filter<T> {
  bool apply(T article);
}

// сортировка по категориям
class CategoryFilter extends Filter<Article> {
  String type;

  CategoryFilter(this.type);

  @override
  bool apply(Article article) => article.type == type;
}

// сортировка по цене (не больше указанной)
class PriceFilter extends Filter<Article> {
  int maxprice;

  PriceFilter(this.maxprice);

  @override
  bool apply(Article article) => article.price <= maxprice;
}

// сортировка по кол-ву оставшихся на складе (не менее указанного)
class QuantityFilter extends Filter<Article> {
  int maxQantity;

  QuantityFilter(this.maxQantity);

  @override
  bool apply(Article article) => article.quantity <= maxQantity;
}

// применить один фильтр
void applyFilter(List<Article> articles, filter) {
  for (var article in articles)
    if (filter.apply(article)) {
      print(
          '${article.id} ${article.type} ${article.title} ${article.price} рублей ${article.quantity} штук');
    }
}

// применить несколько фильтров
void applyFilterList(List<Article> articles, List<Filter> filters) {
  for (var article in articles)
    if (filters.every((filter) => filter.apply(article))) {
      print(
          '${article.id} ${article.type} ${article.title} ${article.price} рублей ${article.quantity} штук');
    }
}

void main() {
  final articles = [
    Article(1, 'хлеб', 'Бородинский', 500, 5),
    Article(2, 'хлеб', 'Белый', 200, 15),
    Article(3, 'молоко', 'Полосатый кот', 60, 53),
    Article(4, 'молоко', 'Коровка', 50, 87),
    Article(5, 'вода', 'Апельсин', 25, 100),
    Article(6, 'вода', 'Черноголовка', 40, 93),
  ];
  final price50orLess = PriceFilter(50);
  final categoryMilk = CategoryFilter('молоко');
  final quantity100orLess = QuantityFilter(100);

  final price100orLess = PriceFilter(100);

  final filtersForMilk = [price50orLess, categoryMilk, quantity100orLess];

  applyFilterList(articles, filtersForMilk);
  print('\n');
  applyFilter(articles, price100orLess);
}
