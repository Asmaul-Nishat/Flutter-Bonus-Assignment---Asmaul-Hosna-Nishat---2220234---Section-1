// import 'package:flutter/widgets.dart';
//
// class CardDataModel {
//   final String? id; // 🔥 ADD THIS (IMPORTANT for Firestore)
//   final String title;
//   final String subtitle;
//   final IconData? icon;
//
//   CardDataModel({
//     this.id,
//     required this.title,
//     required this.subtitle,
//     this.icon,
//   });
//
//   Map<String, dynamic> toMap() {
//     return {
//       'title': title,
//       'subtitle': subtitle,
//     };
//   }
//
//   factory CardDataModel.fromMap(Map<String, dynamic> map, String docId) {
//     return CardDataModel(
//       id: docId,
//       title: map['title'] ?? '',
//       subtitle: map['subtitle'] ?? '',
//       icon: null,
//     );
//   }
//
//   @override
//   String toString() {
//     return "CardDataModel(title: $title, subtitle: $subtitle, icon: $icon)";
//   }
// }