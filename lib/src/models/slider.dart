class Slider {
  String imageAssetPath;
  String title;
  String description;

  Slider({this.imageAssetPath, this.title, this.description});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDesc) {
    description = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }
}

List<Slider> getSlides() {
  List<Slider> slides = new List<Slider>();
  Slider slider = new Slider();

  slider.setDescription(
      "Rest at ease. You'll find out inmediately if you're compromised");
  slider.setTitle("Secure password vault");
  slider.setImageAssetPath("assets/images/blockchain.svg");
  slides.add(slider);
  slider = new Slider();

  slider.setDescription("You can access to your data from any other phone");
  slider.setTitle("Access on all devices");
  slider.setImageAssetPath("assets/images/cloud_file_transfer.svg");
  slides.add(slider);
  slider = new Slider();

  slider.setDescription(
      "Be at easy, your passwords are encrypted and stored with the most secured encryption.");
  slider.setTitle("Save and fill passwords");
  slider.setImageAssetPath("assets/images/shield.svg");
  slides.add(slider);
  slider = new Slider();

  return slides;
}
