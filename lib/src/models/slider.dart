import 'package:easy_localization/easy_localization.dart';

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

  slider.setDescription("securePasswordSliderDescription".tr());
  slider.setTitle("securePasswordSliderTitle".tr());
  slider.setImageAssetPath("assets/images/blockchain.svg");
  slides.add(slider);
  slider = new Slider();

  slider.setDescription("accessSliderDescription".tr());
  slider.setTitle("accessSliderTitle".tr());
  slider.setImageAssetPath("assets/images/cloud_file_transfer.svg");
  slides.add(slider);
  slider = new Slider();

  slider.setDescription("encryptionSliderDescription".tr());
  slider.setTitle("encryptionSliderTitle".tr());
  slider.setImageAssetPath("assets/images/shield.svg");
  slides.add(slider);
  slider = new Slider();

  return slides;
}
