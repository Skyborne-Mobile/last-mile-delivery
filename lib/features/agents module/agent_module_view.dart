import 'package:flutter/material.dart';

// Agents Module Imports
import 'package:last_mile_delivery/core/widgets/agent_bottom_navigation_bar.dart';

import 'package:last_mile_delivery/features/agents%20module/customers/view/agent_customers_view.dart';

import 'package:last_mile_delivery/features/agents%20module/home/view/home_view.dart';

import 'package:last_mile_delivery/features/agents%20module/settings/view/agents_settings_view.dart';

class AgentModuleView extends StatefulWidget {
  const AgentModuleView({super.key});

  @override
  State<AgentModuleView> createState() => _AgentModuleViewState();
}

class _AgentModuleViewState extends State<AgentModuleView> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _setAgentScreen(),
      bottomNavigationBar: AgentCustomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
