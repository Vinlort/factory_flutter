import 'dart:core';

class Factory {
  String name;
  int numberOfWorkers;
  int numberOfMasters;
  int numberOfWorkshops;
  double workerSalary;
  double masterSalary;
  double profitPerWorker;
  double profitPerMaster;
  double totalSalary;

// Конструктор
  Factory({
    required this.name,
    required this.numberOfWorkers,
    required this.numberOfWorkshops,
    required this.workerSalary,
    required this.masterSalary,
    required this.numberOfMasters,
    this.profitPerWorker = 0,
    this.profitPerMaster = 0,
    this.totalSalary = 0,
  });

  // Метод для копіювання заводу (копіюючий конструктор)
  Factory.copy(Factory factory)
      : this(
    name: factory.name,
    numberOfWorkers: factory.numberOfWorkers,
    numberOfWorkshops: factory.numberOfWorkshops,
    workerSalary: factory.workerSalary,
    masterSalary: factory.masterSalary,
    numberOfMasters: factory.numberOfMasters,
    profitPerWorker: factory.profitPerWorker,
    profitPerMaster: factory.profitPerMaster,
  );

// Метод для наймання робочих
  void hireWorker() {
    this.numberOfWorkers += 1;
  }

// Метод для звільнення робочих
  void fireWorker() {
    if (this.numberOfWorkers >= 1) {
      this.numberOfWorkers -= 1;
    }
  }

// Метод для наймання майстрів
  void hireMaster() {
    this.numberOfMasters += 1;
  }

// Метод для звільнення майстрів
  void fireMaster() {
    if (this.numberOfMasters >= 1) {
      this.numberOfMasters -= 1;
    }
  }


// Метод для визначення загальної заробітної плати усіх співробітників
  Factory calculateTotalSalary() {
    totalSalary = this.numberOfWorkers * this.workerSalary +
        this.numberOfMasters * this.masterSalary;
    return this;
  }

// Оператор + для злиття заводів
  Factory operator +(Factory other) {
    Factory oldFactory1 = Factory.copy(this);
    Factory oldFactory2 = Factory.copy(other);
    Factory newFactory = Factory(
        name: '${oldFactory1.name} & ${oldFactory2.name}',
        numberOfWorkers: oldFactory1.numberOfWorkers + oldFactory2.numberOfWorkers,
        numberOfWorkshops: oldFactory1.numberOfWorkshops + oldFactory2.numberOfWorkshops,
        workerSalary: oldFactory2.workerSalary,
        masterSalary: oldFactory2.masterSalary,
        numberOfMasters: oldFactory1.numberOfMasters + oldFactory2.numberOfMasters,
        profitPerWorker: oldFactory2.profitPerWorker,
        profitPerMaster: oldFactory2.profitPerMaster);
    return newFactory;
  }

// Метод для визначення прибутку від одного робочого за місяць
  Factory calculateProfitPerWorker() {
    profitPerWorker = 8000 - this.workerSalary;
    return this;
  }

// Метод для визначення прибутку від одного майстра за місяць
  Factory calculateProfitPerMaster() {
    profitPerMaster = 12000 - this.masterSalary;
    return this;
  }

// Метод для визначення загального прибутку
  double calculateTotalProfit(double invest) {
    double totalProfit =
        this.numberOfWorkers * profitPerWorker +
            this.numberOfMasters * profitPerMaster - invest;
    return totalProfit;
  }

  @override
  int compareTo(Factory other) {
    // Використовуємо numberOfWorkshops для порівняння
    return this.numberOfWorkshops.compareTo(other.numberOfWorkshops);
  }
}
