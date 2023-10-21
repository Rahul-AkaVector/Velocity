class AssetsImages {
  static AssetsImages instance = AssetsImages();

  static const String _imagesPath = "assets/images";

  String jsImage = "$_imagesPath/courses/js.png";
  String welcomeImage = "$_imagesPath/welcome/welcome.png";
}

class AssetsFonts {
  static AssetsFonts instance = AssetsFonts();

  static const String _fontsPath = "assets/fonts";

  String gothamFont = "$_fontsPath/Gotham-Black.otf";
  String heavitasFont = "$_fontsPath/Heavitas.ttf";
}
