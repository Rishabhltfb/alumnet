class User {
  String uid = "";
  String name = "";
  String email = "";
  String profileImageUrl = "";
  String about = "";
  String batch = "";
  String branch = "";
  String cvLink = "";
  String contact = "";
  String linkedinId = "";
  String githubId = "";
  String enrollmentNo = "";
  String facultyNo = "";
  int respect = 10;

  User({
    this.uid = "",
    this.name = "",
    this.email = "",
    this.profileImageUrl = "",
    this.about = "",
    this.batch = "",
    this.contact = "",
    this.githubId = "",
    this.cvLink = "",
    this.facultyNo = "",
    this.enrollmentNo = "",
    this.branch = "",
    this.linkedinId = "",
    this.respect = 10,
  });

  Map toMap(User user) {
    var data = Map<String, dynamic>();
    data['uid'] = user.uid;
    data['name'] = user.name;
    data['email'] = user.email;
    data["profileImageUrl"] = user.profileImageUrl;
    data["about"] = user.about;
    data["batch"] = user.batch;
    data["contact"] = user.contact;
    data["cvLink"] = user.cvLink;
    data["branch"] = user.branch;
    data["linkedinId"] = user.linkedinId;
    data["githubId"] = user.githubId;
    data["enrollmentNo"] = user.enrollmentNo;
    data["facultyNo"] = user.facultyNo;
    data["respect"] = user.respect;

    return data;
  }

  // Named constructor
  User.fromMap(Map<String, dynamic> mapData) {
    try {
      this.uid = mapData['uid'];
      this.name = mapData['name'];
      this.email = mapData['email'];
      this.profileImageUrl = mapData['profileImageUrl'];
      this.about = mapData['about'];
      this.batch = mapData['batch'];
      this.contact = mapData['contact'];
      this.cvLink = mapData['cvLink'];
      this.githubId = mapData['githubId'];
      this.branch = mapData['branch'];
      this.enrollmentNo = mapData['enrollmentNo'];
      this.facultyNo = mapData['facultyNo'];
      this.linkedinId = mapData['linkedinId'];
      this.respect = mapData['respect'];
    } catch (err) {
      print("Error while Converting Map to User");
    }
  }
}
