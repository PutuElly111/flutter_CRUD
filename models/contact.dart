class Contact {
  int _id;
  String _name;
  String _jumlah;
  String _harga;

  Contact(this._name, this._jumlah, this._harga);
  Contact.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._jumlah = map['jumlah'];
    this._harga = map['harga'];
  }
  int get id => _id;
  String get name => _name;
  String get jumlah => _jumlah;
  String get harga => _harga;
  set name(String value) {
    _name = value;
  }

  set jumlah(String value) {
    _jumlah = value;
  }

  set harga(String value) {
    _harga = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['jumlah'] = jumlah;
    map['harga'] = harga;
    return map;
  }
}
