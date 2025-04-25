import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:last_mile_delivery/core/widgets/agent_bottom_navigation_bar.dart';

class AgentsSettingsView extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const AgentsSettingsView(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        ),
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 14.h,
            ),
            child: Container(
              height: 70.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text(
                  'Delivery Agent',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text('agent@example.com'),
                leading: CircleAvatar(
                  radius: 25.r,
                  child: Icon(Icons.person_outline, size: 30.sp),
                ),
                trailing: Icon(Icons.edit),
                onTap: () {
                  // Navigate to profile settings
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
            child: Container(
              height: 115.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                      ),
                      color: const Color.fromARGB(255, 243, 242, 242),
                    ),
                    child: ListTile(
                      title: Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: Icon(
                        Icons.person_outline,
                      ),
                    ),
                  ),
                  Divider(
                    height: 1.h,
                    color: const Color.fromARGB(255, 197, 196, 196),
                  ),
                  ListTile(
                    title: Text(
                      'Personal Information',
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    leading: Icon(Icons.person_outline),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // TODO: Navigate to profile settings
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
            child: Container(
              height: 170.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                      ),
                      color: const Color.fromARGB(255, 243, 242, 242),
                    ),
                    child: ListTile(
                      title: Text(
                        'Preferences',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: Icon(Icons.settings_outlined),
                    ),
                  ),
                  Divider(
                    height: 1.h,
                    color: const Color.fromARGB(255, 197, 196, 196),
                  ),
                  ListTile(
                    title: Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    leading: Icon(Icons.notifications_outlined),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // TODO: Navigate to notifications settings
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Appearance',
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    leading: Icon(Icons.dark_mode_outlined),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // TODO: Navigate to appearance settings
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
            child: Container(
              height: 75.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text(
                  'App Info',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  'Version 1.0.0',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // TODO: Logout
                },
                label: Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.red),
                ),
                icon: Icon(Icons.logout, color: Colors.red),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.red),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: AgentCustomNavigationBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
