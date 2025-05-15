import 'package:flutter/material.dart';
import 'package:last_mile_delivery/core/widgets/admin_bottom_navigation_bar.dart';
import 'package:last_mile_delivery/features/admin%20module/Settings/view/admin_settings_view.dart';

// Admin Module Imports
import 'package:last_mile_delivery/features/admin%20module/agents/view/delivery_agents_view.dart';

import 'package:last_mile_delivery/features/admin%20module/customers/view/admin_customers_view.dart';

import 'package:last_mile_delivery/features/admin%20module/dashboard/view/dashboard_view.dart';

class AdminModuleView extends StatefulWidget {
  const AdminModuleView({super.key});

  @override
  State<AdminModuleView> createState() => _AdminModuleViewState();
}

class _AdminModuleViewState extends State<AdminModuleView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // admin screen bottomnavigation bar
  Widget _setAdminScreen() {
    switch (_selectedIndex) {
      case 0:
        return DashboardView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
      case 1:
        return DeliveryAgentsView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
      case 2:
        return AdminCustomersView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
      case 3:
        return AdminSettingsView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );

      default:
        return DashboardView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _setAdminScreen(),
      bottomNavigationBar: AdminBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
