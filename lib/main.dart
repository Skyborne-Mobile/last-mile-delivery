import 'package:flutter/material.dart';

// Firebase Options
import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

// Common between both modules
import 'package:last_mile_delivery/core/themes/app_theme.dart';

import 'package:last_mile_delivery/features/admin%20module/admin_module_view.dart';

import 'package:last_mile_delivery/features/agents%20module/agent_module_view.dart';

import 'package:last_mile_delivery/features/auth/view/login_view.dart';

import 'package:last_mile_delivery/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
  Future<Map<String, dynamic>?> fetchUserRole(String uid) async {
    final adminDoc =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();
    if (adminDoc.exists) {
      return {'role': 'admin', 'data': adminDoc.data()};
    }

    final agentDoc =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();
    if (agentDoc.exists) {
      return {'role': 'agent', 'data': agentDoc.data()};
    }

    return null; // user not found in either collection
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
          home: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, authSnapshot) {
                if (authSnapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                // if user is logged in
                if (authSnapshot.hasData && authSnapshot.data != null) {
                  final uid = authSnapshot.data!.uid;

                  // Fetch user role from Firestore
                  return FutureBuilder<DocumentSnapshot>(
                    future: FirebaseFirestore.instance
                        .collection('users')
                        .doc(uid)
                        .get(),
                    builder: (context, userSnapshot) {
                      if (userSnapshot.connectionState ==
                          ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (userSnapshot.hasData && userSnapshot.data!.exists) {
                        final userData =
                            userSnapshot.data!.data() as Map<String, dynamic>;

                        final role = userData['role'] as String?;

                        if (role == 'admin') {
                          return const AdminModuleView();
                        } else if (role == 'agent') {
                          return const AgentModuleView();
                        } else {
                          return const LoginView();
                        }
                      } else {
                        return const Center(
                          child: Text('User data not found'),
                        );
                      }
                    },
                  );
                } else {
                  return const LoginView();
                }
              }),
        );
      },
    );
  }
}
