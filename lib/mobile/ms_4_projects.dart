import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';
import '../widgets/project_data.dart';

class MS4PersonalProjects extends StatefulWidget {
  const MS4PersonalProjects({Key? key}) : super(key: key);

  @override
  State<MS4PersonalProjects> createState() => _MS4PersonalProjectsState();
}

class _MS4PersonalProjectsState extends State<MS4PersonalProjects> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.personalProjectsKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.personalProjects, description: ''),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width < 330 ? 530 : 520,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: projectDataList.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 12),
                        child: ContainerCard().MStype3(
                          image: projectDataList[index].image,
                          title: projectDataList[index].title,
                          height: projectDataList[index].height,
                          values: projectDataList[index].values,
                          message: projectDataList[index].message,
                          fontSize: projectDataList[index].size,
                          url: projectDataList[index].url,
                          isButtonEnabled:
                              projectDataList[index].isButtonEnabled,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (_currentPage > 0) {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      icon: const Icon(Icons.arrow_left),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(projectDataList.length,
                          (index) {
                        return Container(
                          width: 7,
                          height: 7,
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == index
                                ? const Color(0xFF019FAB)
                                : Colors.grey,
                          ),
                        );
                      }),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        if (_currentPage < projectDataList.length - 1) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      icon: const Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  final List<ProjectData> projectDataList = [
    ProjectData(
      image: 'food_app.png',
      title: DataValues.projectTitle,
      size: 11,
      height: 180.0,
      values: DataValues.projectDescription,
      message: DataValues.linkedinURL.toString(),
      url: DataValues.projectLink,
      isButtonEnabled: true,
    ),
    ProjectData(
      image: 'chat_app.png',
      title: DataValues.project1Title,
      height: 180.0,
      size: 11,
      values: DataValues.project1Description,
      message: DataValues.linkedinURL.toString(),
      url: DataValues.project1Link,
      isButtonEnabled: true,
    ),
    ProjectData(
      image: 'notes_app.png',
      title: DataValues.project2Title,
      height: 190.0,
      size: 11,
      values: DataValues.project2Description,
      message: DataValues.linkedinURL.toString(),
      url: DataValues.project2Link,
      isButtonEnabled: true,
    ),
    ProjectData(
      image: 'weather_app.png',
      title: DataValues.project3Title,
      height: 190.0,
      size: 11,
      values: DataValues.project3Description,
      message: DataValues.linkedinURL.toString(),
      url: DataValues.project3Link,
      isButtonEnabled: true,
    ),
  ];
}
