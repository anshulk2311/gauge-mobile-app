import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gauge_app/gen/assets.gen.dart';
import 'package:gauge_app/presentation/device-screen/widgets/access_points_list.dart';
import 'package:gauge_app/providers/device/device_provider.dart';
import 'package:gauge_app/utils/text_styles.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class FindDeviceScreen extends StatefulWidget {
  const FindDeviceScreen({super.key});

  @override
  State<FindDeviceScreen> createState() => _FindDeviceScreenState();
}

class _FindDeviceScreenState extends State<FindDeviceScreen> {
  @override
  void initState() {
    Provider.of<DeviceProvider>(context, listen: false).startScan();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DeviceProvider>(
      builder: (context, findDeviceState, _) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: findDeviceState.findingDeviceState == FindingDeviceState.finding
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      Text(
                        "Make sure your device is on",
                        style: subHeadingStyle.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      findDeviceState.wifiListState == WifiListState.empty
                          ? Lottie.asset(Assets.lotties.radar, height: 180.h)
                          : SizedBox(
                              height: 200.h,
                              child: ListView.builder(
                                itemCount: findDeviceState.accessPoints.length,
                                itemBuilder: (context, index) {
                                  return AccessPointTile(
                                    accessPoint:
                                        findDeviceState.accessPoints[index],
                                  );
                                },
                              ),
                            ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Hold tight we are searching for the device",
                        style: subHeadingStyle.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {
                          findDeviceState.changeStateForRetryLimit(
                              findDeviceState.retryTaps++);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Retry",
                              style: subHeadingStyle.copyWith(
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            const Icon(
                              Icons.replay_circle_filled_outlined,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200.h,
                          width: 350.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2.w,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "It looks like there is a problem",
                                  style: headingStyle.copyWith(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "Please make sure you're nearby the device and device is on ",
                                  style: subHeadingStyle.copyWith(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "retry",
                                      style: headingStyle.copyWith(
                                        fontSize: 15.sp,
                                        color: Colors.blue.shade700,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text(
                                      "troubleshoot",
                                      style: headingStyle.copyWith(
                                        fontSize: 15.sp,
                                        color: Colors.blue.shade700,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        findDeviceState.changeStateToFinding();
                                      },
                                      child: Text(
                                        "back",
                                        style: headingStyle.copyWith(
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ),
                                  ],
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
      },
    );
  }
}
