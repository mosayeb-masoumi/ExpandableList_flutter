class MonthModel {
  String _title ="";
  String _description ="";

  MonthModel(this._title, this._description);

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}