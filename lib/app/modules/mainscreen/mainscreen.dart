import 'package:flutter/material.dart';
import 'package:mrtbalancechecker/app/core/appcolors.dart';
import 'package:mrtbalancechecker/app/core/appsize.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        toolbarHeight: getHeight(20),
        // centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        // title: Text(
        //   "MRT Balance Checker",
        //   style: TextStyle(
        //       color: AppColors.whiteColor,
        //       fontWeight: FontWeight.bold,
        //       fontSize: getHeight(25)),
        // ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getHeight(20), vertical: getHeight(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rapid or MRT Pass",
                style: TextStyle(color: AppColors.lightGreenColor),
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                    color: AppColors.deepGreenColor, fontSize: getHeight(50)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
