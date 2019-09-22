class UserModel {
  String id;
  String name;
  String email;
  String role;
  bool isMentor;
  String hackathon;
  String createdAt;
  String updatedAt;
  int v;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.role,
    this.isMentor,
    this.hackathon,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
    email = json['email'];
    role = json['role'];
    isMentor = json['isMentor'];
    hackathon = json['hackathon'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['role'] = this.role;
    data['isMentor'] = this.isMentor;
    data['hackaId'] = this.hackathon;
    return data;
  }
}
