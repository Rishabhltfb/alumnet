class Referral {
  String id = "";
  String receiverId = "";
  String receiverName = "";
  String providerId = "";
  String jobLink = "";
  String providerName = "";
  String status = "";

  Referral({
    this.id = "",
    this.receiverId = "",
    this.receiverName = "",
    this.providerId = "",
    this.jobLink = "",
    this.providerName = "",
    this.status = "",
  });

  Map toMap(Referral referral) {
    var data = Map<String, dynamic>();
    data['id'] = referral.id;
    data['receiverId'] = referral.receiverId;
    data['receiverName'] = referral.receiverName;
    data["providerId"] = referral.providerId;
    data["jobLink"] = referral.jobLink;
    data["providerName"] = referral.providerName;
    data["status"] = referral.status;

    return data;
  }

  // receiverIdd constructor
  Referral.fromMap(Map<String, dynamic> mapData) {
    try {
      this.id = mapData['id'];
      this.receiverId = mapData['receiverId'];
      this.receiverName = mapData['receiverName'];
      this.providerId = mapData['providerId'];
      this.jobLink = mapData['jobLink'];
      this.providerName = mapData['providerName'];
      this.status = mapData['status'];
    } catch (err) {
      print("Error while Converting Map to Referral");
    }
  }
}
