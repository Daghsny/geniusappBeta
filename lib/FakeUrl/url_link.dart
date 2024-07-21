import 'package:geniusapp/FakeUrl/test_url_controller.dart';
import 'package:get/get.dart';

class BaseUrlLink {
  final TestUrlController controller = Get.find();
  fetchBaseUrl() {
    String baseUrl = controller.getTestUrl();
    return baseUrl;
  }
}
