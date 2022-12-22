import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gauge_app/utils/text_styles.dart';

class ConnectingDevice extends StatelessWidget {
  const ConnectingDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200.h,
                width: 250.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.w)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Connecting to Gauge",
                        style: headingStyle.copyWith(
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "RO4666..",
                        style: subHeadingStyle.copyWith(
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Icon(
                        Icons.check,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Connected",
                        style: headingStyle.copyWith(
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
