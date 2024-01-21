import 'dart:math';

class PhotoHelper {
  String getRandomPhotoUrl() {
    final Random random = Random();
    int width = 100 + random.nextInt(701);
    int height = 100 + random.nextInt(701);
    return "https://picsum.photos/$width/$height";
  }
}
