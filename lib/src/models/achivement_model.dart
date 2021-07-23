class Achivement {
  String uid = "";
  String title = "";
  String description = "";
  String organization = "";

  Achivement({
    this.uid = "",
    this.title = "",
    this.description = "",
    this.organization = "",
  });

  Map toMap(Achivement achivement) {
    var data = Map<String, dynamic>();
    data['uid'] = achivement.uid;
    data['title'] = achivement.title;
    data['description'] = achivement.description;
    data["organization"] = achivement.organization;

    return data;
  }

  // titled constructor
  Achivement.fromMap(Map<String, dynamic> mapData) {
    try {
      this.uid = mapData['uid'];
      this.title = mapData['title'];
      this.description = mapData['description'];
      this.organization = mapData['organization'];
    } catch (err) {
      print("Error while Converting Map to Achivement");
    }
  }
}
