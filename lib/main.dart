import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:last_mile_delivery/core/themes/app_theme.dart';

// Admin Module Imports
import 'package:last_mile_delivery/features/admin%20module/Settings/view/admin_settings_view.dart';

import 'package:last_mile_delivery/features/admin%20module/dashboard/view/dashboard_view.dart';
import 'package:last_mile_delivery/features/auth/view/login_view.dart';

import 'features/admin module/agents/view/delivery_agents_view.dart';

import 'features/admin module/customers/view/admin_customers_view.dart';

// Agents Module Imports
import 'package:last_mile_delivery/features/agents%20module/customers/view/agent_customers_view.dart';

import 'package:last_mile_delivery/features/agents%20module/home/view/home_view.dart';

import 'package:last_mile_delivery/features/agents%20module/settings/view/agents_settings_view.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // agent screen bottomnavigation bar
  Widget _setAgentScreen() {
    switch (_selectedIndex) {
      case 0:
        return HomeView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
      case 1:
        return AgentCustomersView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
      case 2:
        return AgentsSettingsView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
      default:
        return HomeView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
    }
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
      default:
        return AdminSettingsView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          darkTheme: AppTheme.dark,
          theme: AppTheme.light,
          themeMode: ThemeMode.system,
          // home: _setAgentScreen(),
          home: _setAdminScreen(),
          // home: LoginView(),
        );
      },
    );
  }
}
