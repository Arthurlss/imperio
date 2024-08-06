import 'package:imperio/utils/utils.dart';
import 'package:imperio/view/home_screen/home_screen.dart';

class AuthController {
  Future<dynamic> login(context) async {
    try {
      // var response = await Dio().post(BASE_URL + "/login");
      // getAuthProvider(context).setLogin(response.data);
      Utils.goToPage(context: context, page: HomeScreen());
    } catch (e) {
      Utils.negativeToast('Negado', 'Acesso negado', context);
      print(e.toString());
    }
  }
}
