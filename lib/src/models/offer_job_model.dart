class OfferJob {
  String id = "";
  String receiverId = "";
  String receiverName = "";
  String providerId = "";
  String providerName = "";
  String jobTitle = "";
  String description = "";
  String amount = "";
  String link = "";

  OfferJob({
    this.id = "",
    this.receiverId = "",
    this.receiverName = "",
    this.providerId = "",
    this.providerName = "",
    this.jobTitle = "",
    this.description = "",
    this.amount = "",
    this.link = "",
  });

  Map toMap(OfferJob offerJob) {
    var data = Map<String, dynamic>();
    data['id'] = offerJob.id;
    data['receiverId'] = offerJob.receiverId;
    data['receiverName'] = offerJob.receiverName;
    data["providerId"] = offerJob.providerId;
    data["providerName"] = offerJob.providerName;
    data["jobTitle"] = offerJob.jobTitle;
    data["description"] = offerJob.description;
    data["amount"] = offerJob.amount;
    data["link"] = offerJob.link;

    return data;
  }

  // receiverIdd constructor
  OfferJob.fromMap(Map<String, dynamic> mapData) {
    try {
      this.id = mapData['id'];
      this.receiverId = mapData['receiverId'];
      this.receiverName = mapData['receiverName'];
      this.providerId = mapData['providerId'];
      this.providerName = mapData['providerName'];
      this.jobTitle = mapData['jobTitle'];
      this.description = mapData['description'];
      this.amount = mapData['amount'];
      this.link = mapData['link'];
    } catch (err) {
      print("Error while Converting Map to OfferJob");
    }
  }
}
