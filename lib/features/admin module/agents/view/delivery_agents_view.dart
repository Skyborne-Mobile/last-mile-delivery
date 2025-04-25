import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:last_mile_delivery/core/widgets/admin_bottom_navigation_bar.dart';

class DeliveryAgentsView extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const DeliveryAgentsView({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Delivery Agents',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        child: Column(
          spacing: 15.h,
          children: [
            Row(
              spacing: 10.w,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Delivery Agents',
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onTap: () {
                      // TODO: Search delivery agents
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Add delivery agent
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.all(18.r),
                    iconColor: Colors.white,
                    backgroundColor: Colors.deepPurpleAccent,
                  ),
                  child: Icon(Icons.add),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25.r,
                child: Icon(Icons.person_outlined),
              ),
              title: Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Row(
                spacing: 2.w,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 14.sp,
                  ),
                  Text('1023 Main St'),
                ],
              ),
              trailing: SizedBox(
                width: 95.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        // TODO: Edit delivery agent
                      },
                      icon: Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {
                        // TODO: Delete delivery agent
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              tileColor: Colors.white,
            )
          ],
        ),
      ),
      bottomNavigationBar: AdminBottomNavigationBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
