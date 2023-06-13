import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'desktop/ds_3_skills.dart';
import 'mobile/ms_3_skills.dart';
import 'theme/responsive_screen_provider.dart';
import 'theme/app_theme.dart';
import 'widgets/nav_bar.dart';
import 'desktop/ds_1_header.dart';
import 'desktop/ds_2_about_me.dart';
import 'desktop/ds_5_education.dart';
import 'desktop/ds_4_projects.dart';
import 'desktop/ds_7_contact.dart';
import 'desktop/ds_8_footer.dart';
import 'mobile/ms_1_header.dart';
import 'mobile/ms_2_about_me.dart';
import 'mobile/ms_5_education.dart';
import 'mobile/ms_4_projects.dart';
import 'mobile/ms_7_contact.dart';
import 'mobile/ms_8_footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basit Ali',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.darkTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showBackToTopButton = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(
        () {
          setState(
            () {
              if (_scrollController.offset >= 300) {
                _showBackToTopButton = true;
              } else {
                _showBackToTopButton = false;
              }
            },
          );
        },
      );

    SystemChannels.textInput.invokeMethod('TextInput.hide');

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    if (_scrollController.offset > 0) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget desktopUI() {
      return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: const [
          DS1Header(),
          DS2AboutMe(),
          DS3Skills(),
          DS4Projects(),
          DS5Education(),
          DS6Contact(),
          DS7Footer(),
        ],
      );
    }

    Widget mobileUI() {
      return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: const [
          MS1Header(),
          MS2AboutMe(),
          MS3Skills(),
          MS4PersonalProjects(),
          MS5Education(),
          MS6Contact(),
          MS7Footer(),
        ],
      );
    }

    return Scaffold(
      appBar: ResponsiveScreenProvider.isDesktopScreen(context)
          ? null
          : AppBar(elevation: 0.0),
      drawer: ResponsiveScreenProvider.isDesktopScreen(context)
          ? null
          : NavBar().mobileNavBar(),
      body: RawKeyboardListener(
        focusNode: FocusNode(),
        autofocus: true,
        onKey: (event) {
          if (event is RawKeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.arrowUp ||
                event.logicalKey == LogicalKeyboardKey.pageUp) {
              _scrollController.animateTo(
                _scrollController.offset - 100,
                duration: const Duration(milliseconds: 50),
                curve: Curves.easeInOut,
              );
            } else if (event.logicalKey == LogicalKeyboardKey.arrowDown ||
                event.logicalKey == LogicalKeyboardKey.pageDown) {
              _scrollController.animateTo(
                _scrollController.offset + 100,
                duration: const Duration(milliseconds: 30),
                curve: Curves.easeInOut,
              );
            }
          }
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: AppThemeData.backgroundGrey,
            child: ResponsiveScreenProvider.isDesktopScreen(context)
                ? desktopUI()
                : mobileUI(),
          ),
        ),
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              tooltip: 'Go to top',
              backgroundColor: AppThemeData.buttonPrimary,
              foregroundColor: AppThemeData.iconSecondary,
              child: const Icon(
                Icons.arrow_upward_rounded,
              ),
            ),
    );
  }
}
