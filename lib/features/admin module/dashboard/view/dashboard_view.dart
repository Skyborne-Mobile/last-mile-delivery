import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardView extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const DashboardView({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Admin Dashboard',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 100.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Agents',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '12',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Active delivery agents',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color.fromARGB(255, 66, 65, 65),
                      ),
                    )
                  ],
                ),
                trailing: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 100.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Customers',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '156',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Registered customers',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color.fromARGB(255, 66, 65, 65),
                      ),
                    )
                  ],
                ),
                trailing: Icon(Icons.newspaper),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 100.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery Rate',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '98%',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Average successful deliveries',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color.fromARGB(255, 66, 65, 65),
                      ),
                    )
                  ],
                ),
                trailing: Icon(Icons.pedal_bike),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
