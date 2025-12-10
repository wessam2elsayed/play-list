import 'package:flutter/material.dart';
import 'package:play_list/core/theme/app_colors.dart';
import 'package:play_list/models/list_model.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(lists[0].name,
    style: TextStyle(color: AppColors.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),);
  }
}