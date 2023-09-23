import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';






class Commons {



  static String? validator({String name= '', String? value, int length= 0}) {
    if (value!.isEmpty) {
      return "Please provide ${name.isEmpty ? 'the value' : name}";
    }
    if (value.length < length) {
      return 'Minimum length of  ${name.isEmpty ? 'value' : name} is ${length.toString()}';
    }
    return null;
  }

  static showHideLoading(status) async{
    if(status) {
      // await Get.dialog(
      //     const SpinKitFadingCircle(
      //       color: AppConstants.gradientColorOne,
      //       size: 50.0,
      //     ),
      //     barrierDismissible: false,
      //     barrierColor: const Color(0x6A1E2429),
      //     useSafeArea: true,
      // );
    } else {
      // Get.back();
      // Get.back(closeOverlays: true);
      // Navigator.of(Get.overlayContext!, rootNavigator: true).pop();
    }
  }

  static Future<String> getImageFilePathFromAssets(String path) async {
    final byteData = await rootBundle.load('assets/images/$path');

    final file = File('${(await getTemporaryDirectory()).path}/$path');
    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file.path;
  }

  static String getSubString(String? value, {int beginIndex = 0, int endIndex = 20}) {
    if (value == null || value.isEmpty) {
      return "";
    }
    if (value.isNotEmpty && value.length >= (endIndex+1)) {
      return "${value.substring(beginIndex, endIndex)}...";
    }
    return value;
  }

  static String secondsToFormattedTime(int value) {
    int h, m, s;

    value = value ~/ 1000000;

    h = value ~/ 3600;

    m = ((value - h * 3600)) ~/ 60;

    s = value - (h * 3600) - (m * 60);

    String hourLeft = h.toString().length < 2 ? "0" + h.toString() : h.toString();

    String minuteLeft =
    m.toString().length < 2 ? "0" + m.toString() : m.toString();

    String secondsLeft =
    s.toString().length < 2 ? "0" + s.toString() : s.toString();

    // String result = "$hourLeft:$minuteLeft:$secondsLeft";


    String result = "${(hourLeft != "00") ? "$hourLeft:" : ""}$minuteLeft:$secondsLeft";

    return result;
  }

  static Future<void> deleteCacheDirectory() async{
    final cacheDir = await getTemporaryDirectory();
    if (cacheDir.existsSync()) {
      cacheDir.deleteSync(recursive: true);
    }
  }

  static showLog(String message) {
    print("Abdullah:- $message");
  }

  static bool isNullOrEmpty(dynamic value) {
    if (value == null || value.isEmpty) {
      return true;
    }
    return false;
  }

  static void showSuccessMessage(String? message, {String? title = "Success!", int duration = 2}) {

  }

  static void showErrorMessage(String? message, {String? title = "Failed!", int duration = 2}) {

  }

  static int randomInt(int min, int max) {
    return min + Random().nextInt(max - min);
  }











}