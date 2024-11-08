import 'package:flutter/material.dart';
import 'package:mrtbalancechecker/app/core/appcolors.dart';
import 'package:mrtbalancechecker/app/core/appsize.dart';
import 'package:nfc_manager/nfc_manager.dart';

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
              // total balance
              Text(
                "Rapid or MRT Pass",
                style: TextStyle(color: AppColors.lightGreenColor),
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                    color: AppColors.deepGreenColor, fontSize: getHeight(50)),
              ),
              // SizedBox(height: getHeight(30)),

              // balance card
              SizedBox(
                width: double.infinity,
                height: getHeight(200),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(getHeight(25))),
                  color: AppColors.whiteColor,
                  child: Center(
                    child: Text(
                      "\$10.76",
                      style: TextStyle(
                          color: AppColors.deepGreenColor,
                          fontSize: getHeight(75)),
                    ),
                  ),
                ),
              ),

              SizedBox(height: getHeight(30)),

              // history
              Text(
                "Latest",
                style: TextStyle(color: AppColors.lightGreenColor),
              ),
              Text(
                "Transactions",
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
