class PersonModel{

  int? id;
  String? name;
  int? age;
  String? nationalityID;
  String? birthDate;
  String? docId;


  PersonModel(this.id, this.name, this.age, this.birthDate, this.nationalityID);
  PersonModel.fromJson(Map<String, dynamic> json, String this.docId){

    id = json['id'];
    name = json['name'];
    age = json['age'];
    nationalityID = json['nationalityID'];
    birthDate = json['birthDate'];
  }
}