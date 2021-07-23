class Project {
  String id = "";
  String title = "";
  String description = "";
  List<String> members = [];
  String link = "";

  Project({
    this.id = "",
    this.title = "",
    this.description = "",
    this.members = const [],
    this.link = "",
  });

  Map toMap(Project project) {
    var data = Map<String, dynamic>();
    data['id'] = project.id;
    data['title'] = project.title;
    data['description'] = project.description;
    data["members"] = project.members;
    data["link"] = project.link;

    return data;
  }

  // titled constructor
  Project.fromMap(Map<String, dynamic> mapData) {
    try {
      this.id = mapData['id'];
      this.title = mapData['title'];
      this.description = mapData['description'];
      this.members = mapData['members'];
      this.link = mapData['link'];
    } catch (err) {
      print("Error while Converting Map to Project");
    }
  }
}
