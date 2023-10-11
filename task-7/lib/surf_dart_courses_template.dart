// task 7

// Техническое задание
// В одном еще совсем маленьком, но подающим большие надежды магазине "Шестёрочка" появилось своё IT-отделение. 
// Одной из задач стало написание своего мобильного приложения с каталогом товаров.

// В силу малого опыта разработчик бэкенда Костя (и по совместительству племянник хозяина магазина) отправляет каталог 
// товаров одним большим списком. Для удобства пользователя все товары решили отображать по их категориям и подкатегориям. 
// Вам предстоит решить задачу их фильтрации самостоятельно!

// У каждого товара есть:

// название;
// категория;
// подкатегория;
// срок годности;
// количество в наличии.
// Ваша цель — структурировать товары по подкатегориям, а подкатегории — по категориям. При этом в конечную подборку 
// не должны попасть товары, которые:

// уже просрочены;
// закончились на складе.
// Подкатегории, содержащие только товары, подпадающие под условия выше, должны отсутствовать в финальной выборке, 
// равно как и категории, состоящие из таких подкатегорий.

// Входные данные
// В качестве входных данных — список сущностей `RawProductItem, содержащий поля:

// `name` — название товара;
// `categoryName` — название категории;
// `subcategoryName` — название подкатегории;
// `expirationDate` — срок годности;
// `qty` — кол-во на складе.

// Выходные данные
// Выходные данные представлены словарем (мапой), где:

// в роли ключа — название категории типа `String`;
// в роли значения — словарь подкатегорий, которые входят в данную категорию.
// В свою очередь для мапы подкатегорий:

// в роли ключа — название подкатегории типа `String`;
// в роли значения — список названий товаров, входящих в подкатегорию, являющуюся ключом.
// Пример выходных данных:

// {
//   'Растительная пища': {
//     'Фрукты': ['Персик', 'Груша'],
//     'Овощи': ['Морковь'],
//     'Крупы': ['Гречка'],
//   },
//   'Молочные продукты': {
//     'Напитки': ['Молоко', 'Кефир'],
//     'Сыры': ['Гауда', 'Маасдам'],
//   },
//   'Мясо': {
//     'Птица': ['Курица'],
//     'Не птица': ['Свинина'],
//   },
// }