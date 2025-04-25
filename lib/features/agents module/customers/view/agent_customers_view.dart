import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:last_mile_delivery/core/widgets/agent_bottom_navigation_bar.dart';

class AgentCustomersView extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const AgentCustomersView({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  State<AgentCustomersView> createState() => _AgentCustomersViewState();
}

class _AgentCustomersViewState extends State<AgentCustomersView> {
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  void filterItems() {
    // TODO: Implement the filter logic
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customers',
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        ),
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        child: Column(
          spacing: 16.h,
          children: [
            TextField(
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
            ListTile(
              tileColor: Colors.white,
              title: Text(
                'John Doe',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.location_on_outlined, size: 16.sp),
                  SizedBox(width: 2.w),
                  Text('123 Main St'),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              trailing: SizedBox(
                width: 155.w,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        //TODO: Implement the location action
                      },
                      icon: Icon(Icons.location_on_outlined),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        // TODO: Implement the call action
                      },
                      label: Text('Delivered'),
                      icon: Icon(Icons.check_circle_outline),
                      style: TextButton.styleFrom(
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AgentCustomNavigationBar(
        selectedIndex: widget.selectedIndex,
        onItemTapped: widget.onItemTapped,
      ),
    );
  }
}
