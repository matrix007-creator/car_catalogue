class Cars {
  final String imageUrl;
  final String name;
  final String category;
  final double price;
  final String description;
  final int power;
  final int engineCapacity;
  final int topSpeed;

  Cars({
    this.imageUrl,
    this.name,
    this.category,
    this.price,
    this.description,
    this.engineCapacity,
    this.power,
    this.topSpeed,
  });
}

final List<Cars> cars = [
  Cars(
    imageUrl: 'assets/images/car_0.jpg',
    name: 'Kia Seltos ',
    category: 'SUV',
    engineCapacity: 1498,
    power: 115,
    price: 20,
    description:
        'The Kia Seltos is the first car from Kia in the country and has set the compact SUV space on fire.',
  ),
  Cars(
    imageUrl: 'assets/images/car_1.jpg',
    name: 'Mercedes G63 AMG',
    category: 'SUV',
    engineCapacity: 3998,
    power: 569,
    price: 1.1,
    description:
        'The G63 AMG is an excellent offroader and comes with the amazing heritage of the Mercedes brand.',
  ),
  Cars(
    imageUrl: 'assets/images/car_2.jpg',
    name: 'Mercedes AMG GT Roadster',
    category: 'Sports',
    engineCapacity: 3982,
    power: 476,
    price: 2.83,
    description:
        'The GT AMG Roadster is the most performance oriented vehicle from the Mercedes Group.',
  ),
  Cars(
    imageUrl: 'assets/images/car_3.jpg',
    name: 'Mercedes SLS AMG',
    category: 'Sport',
    engineCapacity: 6200,
    power: 571,
    price: 2.3,
    description:
        'The SLS AMG is an excellent sports car and comes with the amazing heritage of the Mercedes brand.',
  ),
  Cars(
    imageUrl: 'assets/images/car_4.jpg',
    name: 'BMW 5 Series',
    category: 'Sedan',
    engineCapacity: 2500,
    power: 190,
    price: 56,
    description:
        'The BMW 5 series is one the most iconic cars from the BMW lineup of cars and with a strong recall value',
  ),
  Cars(
    imageUrl: 'assets/images/car_5.jpg',
    name: 'BMW 8 Series Coupe',
    category: 'Sport',
    engineCapacity: 5394,
    power: 686,
    price: 3.85,
    description:
        'The BMW 8 Series coupe is one of the performance oriented cars from BMW and also has strong track crendiatials',
  ),
  Cars(
    imageUrl: 'assets/images/car_6.jpg',
    name: 'Tesla Model 3',
    category: 'SUV',
    engineCapacity: 1000,
    power: 576,
    price: 40,
    description:
        'The Tesla Model 3 is the most affordable way through which one can experience the engineering prowess of Tesla Motors .',
  ),
  Cars(
    imageUrl: 'assets/images/car_7.jpg',
    name: 'Tesla Roadster 2.0',
    category: 'Hyper',
    engineCapacity: 1500,
    power: 1000,
    price: 2.49,
    description:
        'The Tesla Roadster 2.0 is the fastest production car from 0-100 .',
  ),
  Cars(
    imageUrl: 'assets/images/car_8.jpg',
    name: 'Rolls Royce Cullinan Mansory Edition',
    category: 'Limited Edition',
    engineCapacity: 6996,
    power: 571,
    price: 21.45,
    description:
        'The Rolls Royce Cullinan Mansory Edition is most lavish and extravagant machine from one of the most luxirous automobile brands in history.',
  ),
];
