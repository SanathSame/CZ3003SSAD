class User {
  int id;
  String name;

  User(this.id,this.name);

  Map<String,dynamic> toMap() {
    var map = <String,dynamic>{
      'id':id,
      'name':name,
    };
    return map;
  }

  User.fromMap(Map<String,dynamic> map){
    id = map['id'];
    name = map['name'];
  }

}