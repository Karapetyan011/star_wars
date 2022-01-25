// import 'package:careme_app/core/shared_preferences/shared_preferences_keys.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// /// Created by HrAnt WeDoApps
// /// Date: 3/16/21
//
// class SharedPreferencesManager {
//   static SharedPreferences _sharedPrefs;
//
//   getInstance() async {
//     if (_sharedPrefs == null) {
//       _sharedPrefs = await SharedPreferences.getInstance();
//     }
//   }
//
//   /// store user login value
//   String get userLogin =>
//       _sharedPrefs.getString(SharedPreferencesKeys.userLogin);
//
//   set userLogin(String newValue) {
//     _sharedPrefs.setString(SharedPreferencesKeys.userLogin, newValue);
//   }
//
//   void removeUserLogin() {
//     if (_sharedPrefs?.containsKey(SharedPreferencesKeys.userLogin) ?? false) {
//       _sharedPrefs?.remove(SharedPreferencesKeys.userLogin);
//     }
//   }
//
//   /// store user password value
//   String get userPassword =>
//       _sharedPrefs.getString(SharedPreferencesKeys.userPassword);
//
//   set userPassword(String newValue) {
//     _sharedPrefs.setString(SharedPreferencesKeys.userPassword, newValue);
//   }
//
//   void removeUserPassword() {
//     if (_sharedPrefs?.containsKey(SharedPreferencesKeys.userPassword) ??
//         false) {
//       _sharedPrefs?.remove(SharedPreferencesKeys.userPassword);
//     }
//   }
//
//   /// store user token value
//   String get userToken =>
//       _sharedPrefs.getString(SharedPreferencesKeys.userToken);
//
//   set userToken(String newValue) {
//     _sharedPrefs.setString(SharedPreferencesKeys.userToken, newValue);
//   }
//
//   void updateUserToken(String value) {
//     if (_sharedPrefs?.containsKey(SharedPreferencesKeys.userToken) ?? false) {
//       _sharedPrefs?.remove(SharedPreferencesKeys.userToken);
//     }
//     _sharedPrefs?.setString(SharedPreferencesKeys.userToken, value);
//   }
//
//   void removeUserToken() {
//     if (_sharedPrefs?.containsKey(SharedPreferencesKeys.userToken) ?? false) {
//       _sharedPrefs?.remove(SharedPreferencesKeys.userToken);
//     }
//   }
//
//   /// store remember user login value
//   bool get rememberMe =>
//       _sharedPrefs.getBool(SharedPreferencesKeys.rememberMe) ?? false;
//
//   set rememberMe(bool newValue) {
//     _sharedPrefs.setBool(SharedPreferencesKeys.rememberMe, newValue);
//   }
//
//   void resetRememberMe() {
//     if (_sharedPrefs?.containsKey(SharedPreferencesKeys.rememberMe) ?? false) {
//       _sharedPrefs?.remove(SharedPreferencesKeys.rememberMe);
//     }
//   }
//
//   /// store remember user login value
//   bool get isGuest =>
//       _sharedPrefs.getBool(SharedPreferencesKeys.isGuest) ?? false;
//
//   set isGuest(bool newValue) {
//     _sharedPrefs.setBool(SharedPreferencesKeys.isGuest, newValue);
//   }
//
//   ///
//   String get customerId =>
//       _sharedPrefs.getString(SharedPreferencesKeys.customerId);
//
//   set customerId(String newValue) {
//     _sharedPrefs.setString(SharedPreferencesKeys.customerId, newValue);
//   }
//
//   void removeCustomerId() {
//     if (_sharedPrefs?.containsKey(SharedPreferencesKeys.customerId) ?? false) {
//       _sharedPrefs?.remove(SharedPreferencesKeys.customerId);
//     }
//   }
//
//   /// Inactive DateTime
//   String get inactiveDateTime =>
//       _sharedPrefs.getString(SharedPreferencesKeys.inactiveDateTime);
//
//   set inactiveDateTime(String newValue) {
//     _sharedPrefs.setString(SharedPreferencesKeys.inactiveDateTime, newValue);
//   }
//
//   void removeInactiveDateTime() {
//     if (_sharedPrefs?.containsKey(SharedPreferencesKeys.inactiveDateTime) ??
//         false) {
//       _sharedPrefs?.remove(SharedPreferencesKeys.inactiveDateTime);
//     }
//   }
//
//   /// common methods
//   resetAll() {
//     final tempLogin = userLogin;
//     final tempRememberMe = rememberMe;
//     _sharedPrefs.clear();
//     userLogin = tempLogin ?? "";
//     rememberMe = tempRememberMe ?? false;
//   }
// }
//
// //
// // /// Intervention ID
// // String getInterventionIdByCustomer(String id) {
// //   return _sharedPrefs.getString(SharedPreferencesKeys.interventionId(id)) ??
// //       "";
// // }
// //
// // setInterventionIdForCustomer(String id, String value) {
// //   _sharedPrefs.setString(
// //       SharedPreferencesKeys.interventionId(id), value ?? "");
// // }
// //
// // void removeInterventionId(String id) {
// //   if (_sharedPrefs?.containsKey(SharedPreferencesKeys.interventionId(id)) ??
// //       false) {
// //     _sharedPrefs?.remove(SharedPreferencesKeys.interventionId(id));
// //   }
// // }
// //
// // /// Intervention Tracking Date
// // String getInterventionTrackingByCustomer(String id) {
// //   return _sharedPrefs
// //       .getString(SharedPreferencesKeys.interventionTrackingDate(id)) ??
// //       "";
// // }
// //
// // setInterventionTrackingDateByCustomer(String id, String value) {
// //   _sharedPrefs.setString(
// //       SharedPreferencesKeys.interventionTrackingDate(id), value ?? "");
// // }
// //
// // void removeInterventionTrackingDateByCustomer(String id) {
// //   if (_sharedPrefs
// //       ?.containsKey(SharedPreferencesKeys.interventionTrackingDate(id)) ??
// //       false) {
// //     _sharedPrefs?.remove(SharedPreferencesKeys.interventionTrackingDate(id));
// //   }
// // }
