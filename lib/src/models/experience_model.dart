class Experience {
  String uid = "";
  String roleTitle = "";
  String roleDescription = "";
  String organization = "";

  Experience({
    this.uid = "",
    this.roleTitle = "",
    this.roleDescription = "",
    this.organization = "",
  });

  Map toMap(Experience experience) {
    var data = Map<String, dynamic>();
    data['uid'] = experience.uid;
    data['roleTitle'] = experience.roleTitle;
    data['roleDescription'] = experience.roleDescription;
    data["organization"] = experience.organization;

    return data;
  }

  // roleTitled constructor
  Experience.fromMap(Map<String, dynamic> mapData) {
    try {
      this.uid = mapData['uid'];
      this.roleTitle = mapData['roleTitle'];
      this.roleDescription = mapData['roleDescription'];
      this.organization = mapData['organization'];
    } catch (err) {
      print("Error while Converting Map to Experience");
    }
  }
}
