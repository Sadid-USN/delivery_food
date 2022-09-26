import 'package:delivery_food/data/api/api_client.dart';
import 'package:delivery_food/utils/app_constans.dart';
import 'package:get/get.dart';

class ProductRepository extends GetxService {
  final ApiClient apiClient;
  ProductRepository({required this.apiClient});

  Future<Response> getProductList() async {
    return await apiClient.getData(AppConstants.PRODUCT_API_URI);
  }
}
