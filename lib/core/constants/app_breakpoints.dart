import 'package:flutter/widgets.dart';
import 'package:responsive_breakpoints/breakpoint_spec.dart';
import 'package:responsive_breakpoints/extensions_theme.dart';

enum AppBreakpoint implements BreakpointSpec {
  mobile(breakpoint: 0),
  tablet(breakpoint: 600),
  desktop(breakpoint: 1024),
  wide(breakpoint: 1440);

  const AppBreakpoint({required this.breakpoint});

  @override
  final double breakpoint;

  static const all = <AppBreakpoint>[
    AppBreakpoint.mobile,
    AppBreakpoint.tablet,
    AppBreakpoint.desktop,
    AppBreakpoint.wide,
  ];

  static AppBreakpoint of(BuildContext context) =>
      ResponsiveBreakpointTheme.of<AppBreakpoint>(context);
}

