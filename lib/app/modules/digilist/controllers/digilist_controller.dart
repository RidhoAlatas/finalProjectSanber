
import 'package:digimonapi/app/modules/digilist/digimon_model_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DigilistController extends GetxController {
  var isloading = true.obs;
  var digilist = <DigimonModel>[].obs;

  @override
  void onInit(){
    fetchdigimonlist();
    super.onInit();
  }

  void fetchdigimonlist()async{
    isloading(true);
    try{
      var listing = await Dataservices.getData();
      if (listing != null){
        digilist.value = listing;
      }
    } finally{
      isloading(false);
    }
  }
}

class Dataservices {
  static var client = http.Client();

  static Future<List<DigimonModel>?> getData() async {
    var response =

        await client
            .get(Uri.parse("https://digimon-api.vercel.app/api/digimon"));

    if (response.statusCode == 200) {
      var data = response.body;
      return listFromJson(data);
    } else {
      return null;
    }
  }
}
