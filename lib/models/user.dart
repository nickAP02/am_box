class User{
    String? firstName;
    String? lastName;
    String? phoneNumber;
    String? password;
    String? email;
    User({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.password,
    this.email
  });
    factory User.fromJson(Map<String,dynamic> json){
    return User(
      // idUser : json["idUser"] ?? "",
      firstName : json["firstName"]??"",
      lastName : json["lastName"]??"",
      phoneNumber : json["phoneNumber"] ??"",
      password : json["password"]??"",
      email : json["email"] ??""
    );
  }
}