import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminCustomersView extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const AdminCustomersView({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 14.h,
            ),
            child: Row(
              spacing: 10,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Customers',
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                // Add Customer button
                ElevatedButton(
                  onPressed: () {
                    // TODO: Add delivery agent
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.all(18),
                    iconColor: Colors.white,
                    backgroundColor: Colors.deepPurpleAccent,
                  ),
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),

          // Customers List
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 10.h,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Leading icons vertically stacked
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 20,
                          children: [
                            CircleAvatar(
                              radius: 30.r,
                              child: Icon(Icons.person_outline),
                            ),
                            CircleAvatar(
                              radius: 30.r,
                              child: Icon(Icons.home_outlined),
                            ),
                          ],
                        ),

                        // Center content: name, phone, and address
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 6,
                            children: [
                              Text(
                                'Alice Johnson',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 6,
                                children: [
                                  Icon(Icons.phone_outlined, size: 16.sp),
                                  Text('+1234567890'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 6,
                                children: [
                                  Icon(Icons.location_on_outlined, size: 16.sp),
                                  Text('789 Pine Rd, Valley'),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Trailing actions vertically stacked
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.location_on_outlined),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.edit_outlined),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete_outline,
                                  color: Colors.red),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
