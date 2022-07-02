import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ProfilePhotoUpdate {
  Future updatePhoto(
    BuildContext context,
    File photo,
  ) async {
  

    var fileContent = photo.readAsBytesSync();
    var fileContentBase64 = base64.encode(fileContent);
    try {
      var response = await http.put(
        Uri.parse('https://goservices.qa/api/v1/users/update_photo/'),
        body: {
          'photo': photo,
        },
        headers: {'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY0NTE2Nzc2LCJpYXQiOjE2NTY3NDA3NzYsImp0aSI6ImU3NmVjYzAzMzBlNDQ5Mjc4Y2E4YzQ4N2NlMDEzYjMxIiwidXNlcl9pZCI6NDN9.cepsLbCJhKKjKPrAl9XOYyFCJXzptfT5AE0ZsJhLIdQ'},
      );

      if (response.statusCode == 200) {
        return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            dismissDirection: DismissDirection.down,
            duration: const Duration(seconds: 1),
            backgroundColor: Colors.green,
            content: Text("base.profile_photo_updated")),
        
        );
      } else {
        return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            dismissDirection: DismissDirection.down,
            duration: const Duration(seconds: 1),
            backgroundColor: Colors.green,
            content: Text(response.body),
          ),
        );
      }
    } catch (e) {
      return e;
    }
  }
}
