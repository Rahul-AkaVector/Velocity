class TestImage {
  static TestImage instance = TestImage();

  static const String _imagesPath = "assets/images";

  String jsImage = "$_imagesPath/courses/js.png";
  String welcomeImage = "$_imagesPath/welcome/welcome.png";
}

class AssetsFonts {
  static AssetsFonts instance = AssetsFonts();

  static const String _fontsPath = "assets/fonts";

  String gothamFont = "$_fontsPath/Gotham-Black.otf";
  String heavitasFont = "$_fontsPath/Heavitas.ttf";
  String emberBoldFont = "$_fontsPath/Ember_Bold.otf";
  String emberLightFont = "$_fontsPath/Ember_Light.otf";
  String emberRegularFont = "$_fontsPath/Ember_Regular.otf";
}

class AssetsCoursesImages {
  static AssetsCoursesImages instance = AssetsCoursesImages();

  static const String _imagesPath = "assets/images/courses/images";
  static const String _bannersPath = "assets/images/courses/banners";

  String cCard = "$_imagesPath/language_c.jpg";
  String cSharpCard = "$_imagesPath/language_c#.png";
  String cPlusPlusCard = "$_imagesPath/language_c++.jpg";
  String dartCard = "$_imagesPath/language_dart.png";
  String goCard = "$_imagesPath/language_go.png";
  String javaCard = "$_imagesPath/language_java.png";
  String javascriptCard = "$_imagesPath/language_javascript.png";
  String kotlinCard = "$_imagesPath/language_kotlin.png";
  String pythonCard = "$_imagesPath/language_python.jpg";
  String swiftCard = "$_imagesPath/language_swift.png";
  String typescriptCard = "$_imagesPath/language_typescript.png";

  String dartBanner = "$_bannersPath/banner_dart.jpg";
}

class AssetsCarouselSlider {
  static AssetsCarouselSlider instance = AssetsCarouselSlider();

  static const String _carouselPath = "assets/images/carousel_slider";

  String slider1 = "$_carouselPath/carousel_image_00.jpg";
  String slider2 = "$_carouselPath/carousel_image_01.jpg";
  String slider3 = "$_carouselPath/carousel_image_02.jpg";
  String slider4 = "$_carouselPath/carousel_image_03.jpg";
  String slider5 = "$_carouselPath/carousel_image_04.jpg";

  String dartBanner = "$_carouselPath/banner_dart.jpg";
}

String getImageForCourse(String courseName) {
  switch (courseName) {
    case 'C':
      return AssetsCoursesImages.instance.cCard;
    case 'C#':
      return AssetsCoursesImages.instance.cSharpCard;
    case 'Swift':
      return AssetsCoursesImages.instance.swiftCard;
    case 'Python':
      return AssetsCoursesImages.instance.pythonCard;
    case 'Kotlin':
      return AssetsCoursesImages.instance.kotlinCard;
    case 'Dart':
      return AssetsCoursesImages.instance.dartCard;
    default:
      return AssetsCoursesImages.instance.dartCard;
  }
}
