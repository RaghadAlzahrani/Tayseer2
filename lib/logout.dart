import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:tayseer/log_in_page/log_in_page_widget.dart';

logout() async {
  await FirebaseAuth.instance.signOut();
  Get.offAll(LogInPageWidget());
}
