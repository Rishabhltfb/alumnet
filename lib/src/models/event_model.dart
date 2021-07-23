class Event {
  String uid = "";
  String name = "";
  String description = "";
  String posterImg = "";
  String link = "";
  String dateTime = "";

  Event({
    this.uid = "",
    this.name = "",
    this.description = "",
    this.posterImg = "",
    this.link = "",
    this.dateTime = "",
  });

  Map toMap(Event event) {
    var data = Map<String, dynamic>();
    data['uid'] = event.uid;
    data['name'] = event.name;
    data['description'] = event.description;
    data["posterImg"] = event.posterImg;
    data["link"] = event.link;
    data["dateTime"] = event.dateTime;

    return data;
  }

  // Named constructor
  Event.fromMap(Map<String, dynamic> mapData) {
    try {
      this.uid = mapData['uid'];
      this.name = mapData['name'];
      this.description = mapData['description'];
      this.posterImg = mapData['posterImg'];
      this.link = mapData['link'];
      this.dateTime = mapData['dateTime'];
    } catch (err) {
      print("Error while Converting Map to Event");
    }
  }
}
