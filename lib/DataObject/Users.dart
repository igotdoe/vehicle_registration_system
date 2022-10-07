class UsersObject {
  String? id;
  String? name;
  String? email;
  String? image;
  String? phone;


  UsersObject({
    this.id,
    this.name,
    this.email,
    this.image,
    this.phone,
  });

  UsersObject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['image'] = image;
    data['phone'] = phone;
    return data;
  }

  

}
