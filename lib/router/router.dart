import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hakaton_map_test/pages/home_page/home_page.dart';
import 'package:hakaton_map_test/pages/map_page/map_page.dart';
import 'package:hakaton_map_test/pages/task_page/task_page.dart';
import 'package:hakaton_map_test/pages/topic_details_page/topic_details_page.dart';

import '../pages/auth_page/auth_page.dart';
import '../pages/profile_page/profile_page.dart';
import '../pages/tabs_page/tabs_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/auth',
  routes: [
    GoRoute(
      path: '/auth',
      name: 'Auth',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return CustomTransitionPage(
          child: const AuthPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: CurveTween(curve: Curves.fastOutSlowIn).animate(animation), child: child);
          },
        );
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => TabsPage(navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              name: 'Home',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return CustomTransitionPage(
                  child: const HomePage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.fastOutSlowIn).animate(animation), child: child);
                  },
                );
              },
            ),
            GoRoute(
              path: '/topicDetails',
              name: 'TopicDetailsPage',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return CustomTransitionPage(
                  child: const TopicDetailsPage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.fastOutSlowIn).animate(animation), child: child);
                  },
                );
              },
            ),
            GoRoute(
              path: '/task',
              name: 'TaskPage',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return CustomTransitionPage(
                  child: TaskPage(
                    type: state.uri.queryParameters['type']!,
                    title: state.uri.queryParameters['title']!,
                    theme: state.uri.queryParameters['theme']!,
                  ),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.fastOutSlowIn).animate(animation), child: child);
                  },
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              name: 'asd',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return CustomTransitionPage(
                  child: const ProfilePage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.fastOutSlowIn).animate(animation), child: child);
                  },
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              name: 'dsa',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return CustomTransitionPage(
                  child: const ProfilePage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.fastOutSlowIn).animate(animation), child: child);
                  },
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              name: 'Profile',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return CustomTransitionPage(
                  child: const ProfilePage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.fastOutSlowIn).animate(animation), child: child);
                  },
                );
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/map',
      name: 'MapPage',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return CustomTransitionPage(
          child: const MapPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: CurveTween(curve: Curves.fastOutSlowIn).animate(animation), child: child);
          },
        );
      },
    ),
  ],
);
