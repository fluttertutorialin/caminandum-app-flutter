import 'package:caminandum_web/model/user/near_user.dart';
import 'package:caminandum_web/services/api/retrofit_client.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomePageController extends GetxController {
  var statusVaccine = true.obs;
  var statusGroup = true.obs;
  var isGetNearUser = false.obs;
  var isLoading = true.obs;

  // List View
  var isChangeViewToList = true.obs;

  // Grid View
  var isChangeViewToGrid = false.obs;

  // 3 Grid View
  var isChangeViewToGridView = false.obs;

  List<NearbyUser> userList = <NearbyUser>[].obs;
  List<NearbyUser> userList2 = <NearbyUser>[].obs;
  List<Profile> userProfile = <Profile>[].obs;

  // Pagination
  final PagingController<int, NearbyUser> pagingController =
      PagingController(firstPageKey: 1);

  late Position _currentPosition;
  var currentLatitude = ''.obs;
  var currentLongitude = ''.obs;
  int page = 1;

  @override
  void onInit() {
    getCurrentLocation();
    checkNearUser(page);

    pagingController.addPageRequestListener((pageKey) {
      checkNearUser(pageKey);
    });
    super.onInit();
  }

  void dispose() {
    super.dispose();
  }

  getCurrentLocation() async {
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      // Store the position in the variable
      _currentPosition = position;
      currentLatitude.value = position.latitude.toString();
      currentLongitude.value = position.longitude.toString();
      print('CURRENT POS: $_currentPosition');

      // For moving the camera to current location
    });
  }

  var isLoadingPage = false.obs;

  checkNearUser(page) {
    print("page -->>>  $page");
    try {
      isLoading(true);
      update();

      RetrofitClientInstance.getInstance()
          .getDataService()
          .nearUser(0, 0, "23.0225", '72.5714', page)
          .then((value) {
        userList.add(value);
        // final isLastPage = userList[0].total < ;
        // userList2.add(value.profiles);
        // userList2.add(value);
        // print('value -->>> ${userList2[0].profiles.length}');
        // final isLastPage = userList[0].total <= userList2[0].profiles.length;
        // print('isLastPage -->>> $isLastPage');

        // if (isLastPage) {
        //   pagingController.appendLastPage(userList2);
        // } else {
        //   final nextPageKey = page + 1;
        //   pagingController.appendPage(userList2, nextPageKey);
        // }
        isLoading(false);
        update();
      });
    } catch (e) {
      isLoading(false);
      print(e);
    }
  }

  onChangeViewToList() {
    isChangeViewToList(true);
    isChangeViewToGridView(false);
    isChangeViewToGrid(false);
    update();
  }

  onChangeViewToGridView() {
    isChangeViewToList(false);
    isChangeViewToGridView(true);
    isChangeViewToGrid(false);
    update();
  }

  onChangeViewToGrid() {
    isChangeViewToList(false);
    isChangeViewToGridView(false);
    isChangeViewToGrid(true);
    update();
  }
}
