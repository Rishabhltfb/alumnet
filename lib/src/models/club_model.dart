class Club {
  String uid = "";
  String name = "";
  String email = "";
  String clubImg = "";
  String about = "";
  String contact = "";
  String linkedinId = "";
  List<String> members = [];

  Club({
    this.uid = "",
    this.name = "",
    this.email = "",
    this.clubImg = "",
    this.about = "",
    this.contact = "",
    this.linkedinId = "",
    this.members = const [],
  });

  Map toMap(Club club) {
    var data = Map<String, dynamic>();
    data['uid'] = club.uid;
    data['name'] = club.name;
    data['email'] = club.email;
    data["clubImg"] = club.clubImg;
    data["about"] = club.about;
    data["contact"] = club.contact;
    data["linkedinId"] = club.linkedinId;

    return data;
  }

  // Named constructor
  Club.fromMap(Map<String, dynamic> mapData) {
    try {
      this.uid = mapData['uid'];
      this.name = mapData['name'];
      this.email = mapData['email'];
      this.clubImg = mapData['clubImg'];
      this.about = mapData['about'];
      this.linkedinId = mapData['linkedinId'];
      this.contact = mapData['contact'];
    } catch (err) {
      print("Error while Converting Map to Event");
    }
  }
}
