class Todo {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  // constructors
  Todo(this._title, this._priority, this._date, [this._description]);

  // named constructors
  Todo.withId(this._id, this._title, this._priority, this._date,
      [this._description]);

  Todo.fromObject(dynamic o) {
    this._id = o['id'];
    this._title = o['title'];
    this.description = o['description'];
    this._priority = o['priority'];
    this.date = o['date'];
  }

  // getters using fat arrow syntax
  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  // setters
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      _title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      _description = newDescription;
    }
  }

  set priority(int newPriority) {
    if (newPriority > 0 && newPriority <= 3) {
      _priority = newPriority;
    }
  }

  set date(String newDate) {
    _date = newDate;
  }

// a method toMap() with return type Map<String, dynamic>
// key: String, value: dynamic
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }
}
