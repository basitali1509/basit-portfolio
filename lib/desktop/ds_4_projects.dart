import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';
import '../widgets/project_data.dart';

class DS4Projects extends StatefulWidget {
  const DS4Projects({Key? key}) : super(key: key);

  @override
  State<DS4Projects> createState() => _DS4ProjectsState();
}

class _DS4ProjectsState extends State<DS4Projects> {
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
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
              title: DataValues.personalProjects,
              description: ' ',
            ),
            Column(
              children: [
                SizedBox(
                  height: 520,
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
                        margin: const EdgeInsets.all(20),
                        child: ContainerCard().type3(
                          image: projectDataList[index].image,
                          title: projectDataList[index].title,
                          height: projectDataList[index].height,
                          fontSize: projectDataList[index].size,
                          values: projectDataList[index].values,
                          message: projectDataList[index].message,
                          url: projectDataList[index].url,
                          isButtonEnabled:
                              projectDataList[index].isButtonEnabled,
                          buttonText: projectDataList[index].buttonText,
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
                          width: 10,
                          height: 10,
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
      image: 'Amazon_App.png',
      title: DataValues.project4Title,
      height: 250.0,
      size: 13,
      values: DataValues.project4Description,
      message: DataValues.githubURL.toString(),
      url: DataValues.project4Link,
      isButtonEnabled: true,
        buttonText: 'See GitHub >>'

    ),
    ProjectData(
      image: 'food_app.png',
      title: DataValues.projectTitle,
      height: 240.0,
      size: 13,
      values: DataValues.projectDescription,
      message: DataValues.linkedinURL.toString(),
      url: DataValues.projectLink,
      isButtonEnabled: true,
        buttonText: 'See Demo >>'
    ),
    ProjectData(
      image: 'chat_app.png',
      title: DataValues.project1Title,
      height: 240.0,
      size: 13,
      values: DataValues.project1Description,
      message: DataValues.linkedinURL.toString(),
      url: DataValues.project1Link,
      isButtonEnabled: true,
        buttonText: 'See Demo >>'
    ),
    ProjectData(
      image: 'notes_app.png',
      title: DataValues.project2Title,
      height: 250.0,
      size: 13,
      values: DataValues.project2Description,
      message: DataValues.linkedinURL.toString(),
      url: DataValues.project2Link,
      isButtonEnabled: true,
        buttonText: 'See Demo >>'
    ),
    ProjectData(
      image: 'weather_app.png',
      title: DataValues.project3Title,
      height: 240.0,
      size: 13,
      values: DataValues.project3Description,
      message: DataValues.linkedinURL.toString(),
      url: DataValues.project3Link,
      isButtonEnabled: true,
        buttonText: 'See Demo >>'
    ),
  ];
}
