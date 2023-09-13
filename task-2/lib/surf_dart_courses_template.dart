class Phone {
  String brand;
  String model;
  int price;
  final int batteryCapacity;
  Camera? camera;
  static const int memory = 256;
  int? _phoneNumber;

  Phone(this.brand, this.model, this.price, this.batteryCapacity, this.camera);

  Phone.named(this.price, this.batteryCapacity, this.camera,
      {required this.brand, required this.model}) {
    this.brand = brand;
    this.model = model;
    this.price = price;
    this.batteryCapacity;
    this.camera;
  }

  cameraFunc() {
    return 'Камера умеет делать *ЩЕЛК*, качество фотографии просто отличное';
  }

  set phoneNumber(int value) {
    _phoneNumber = value;
  }

  @override
  String toString() {
    var aboutPhone =
        '''Телефон $brand $model. \nУ него есть $camera. \nБатарея ёмкостью $batteryCapacity мА*ч
    \nВнутренняя память телефона: $memory ГБ
    \nЦена устройства: от $price долларов
    ''';

    if (_phoneNumber != null) {
      aboutPhone = aboutPhone + '\nНомер телефона $_phoneNumber';
    }

    return aboutPhone;
  }
}

class Camera {
  String matrix;
  int megaPixel;

  Camera({required this.matrix, required this.megaPixel});

  @override
  String toString() {
    return 'камера с матрицей $matrix, количество мегапикселей: $megaPixel';
  }
}

void main() {
  var phone1 = Phone(
      'Apple', 'iPhone 11', 799, 3250, Camera(matrix: 'Sony', megaPixel: 12));

  var phone2 = Phone.named(1199, 5000, Camera(matrix: 'Sony', megaPixel: 48),
      brand: 'Apple', model: 'iPhone 15 pro max');

  var phone3 = Phone.named(1000, 4000, Camera(matrix: 'Sony', megaPixel: 12),
      brand: 'Apple', model: 'iPhone 14 pro');

  print('==========');
  print('\n');
  print(phone1);
  print('\n');
  print(phone1.cameraFunc());

  print('\n');
  print(phone2);
  print('\n');
  print(phone2.cameraFunc());

  print('\n');
  phone3._phoneNumber = 88005553535;
  print(phone3);
  print('\n');
  print(phone3.cameraFunc());
}
