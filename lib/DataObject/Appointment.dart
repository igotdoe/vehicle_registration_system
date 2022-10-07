class AppointmentObject {
  String? id;
  int? createdAt;
  String? userId;
  String? title;
  String? description;
  int ? appoinmentDate;
  Map<String, dynamic>? details;
  Map<String, dynamic>? status;
  Map<String, dynamic>? user;
  String? type;

  AppointmentObject({
    this.id,
    this.createdAt,
    this.userId,
    this.title,
    this.description,
    this.details,
    this.status,
    this.user,
    this.type,
    this.appoinmentDate
  });

  AppointmentObject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    userId = json['userId'];
    title = json['title'];
    description = json['description'];
    details = json['details'];
    status = json['status'];
    user = json['user'];
    type = json['type'];
    appoinmentDate = json['appoinmentDate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['userId'] = userId;
    data['title'] = title;
    data['description'] = description;
    data['details'] = details;
    data['status'] = status;
    data['user'] = user;
    data['type'] = type;
    data['appoinmentDate'] = appoinmentDate;
    return data;
  }

  List<AppointmentObject> dummyAppointment = [
    AppointmentObject(
        createdAt: 1629200000,
        description: "This is a dummy appointment",
        details: {"vehicle": "Toyota", "road": "Kathmandu", "license": "A1"},
        id: "1",
        status: {"status": "pending", "message": "Your appointment is pending"},
        title: "Dummy Appointment",
        userId: "1",        
        user: {
          "id": "1",
          "name": "Sagar",
          "email": "",
          "image": "",
          "phone": "0248485308"
        },
        type: "Car Registration",
   
        ),
  ];
}
