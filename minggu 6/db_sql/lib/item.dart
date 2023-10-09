class Item {
  int? _id;
  String? _name;
  int? _price;
  String? _kodeBarang;
  int? _stok;
  // String image;


  int? get id => _id;

  String get name => this._name ?? '';
  set name(String value) => this._name = value;

  get price => this._price ?? 1;
  set price(value) => this._price = value;

  String get kodeBarang => this._kodeBarang ?? '';
  set kodeBarang(String value) => this._kodeBarang = value;

  get stok => this._stok ?? 1;
  set stok(value) => this._stok = value;

  // konstruktor 1
  Item(this._name, this._price, this._kodeBarang, this._stok);

  // konstruktor 2: konversi map ke item
  Item.fromMap(Map<String, dynamic> map){
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
    this._kodeBarang = map['kodeBarang'];
    this._stok = map['stok'];
  }

  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = this._name;
    map['price'] = this._price;
    map['kodeBarang'] = this._kodeBarang;
    map['stok'] = this._stok;
    return map;
  }

}

