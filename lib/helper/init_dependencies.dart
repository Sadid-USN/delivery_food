import 'package:delivery_food/data/api/api_client.dart';
import 'package:delivery_food/data/controllers/product_controller.dart';
import 'package:delivery_food/data/repository/product_repo.dart';
import 'package:delivery_food/utils/app_constans.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // ApiClient
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //repository
  Get.lazyPut(() => ProductRepository(apiClient: Get.find()));

  //Controller
  Get.lazyPut(() => ProductController(productRepository: Get.find()));
}
