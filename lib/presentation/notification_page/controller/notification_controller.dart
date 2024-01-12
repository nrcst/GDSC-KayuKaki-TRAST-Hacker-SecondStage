import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/notification_page/models/notification_model.dart';

/// A controller class for the NotificationPage.
///
/// This class manages the state of the NotificationPage, including the
/// current notificationModelObj
class NotificationController extends GetxController {
  NotificationController(this.notificationModelObj);

  Rx<NotificationModel> notificationModelObj;
}
