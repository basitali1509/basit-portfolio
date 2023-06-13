import 'package:url_launcher/url_launcher.dart';
import '../statics/data_values.dart';

class ResumeLauncher{
  static void launchResume() async {
    String resumeUrl = DataValues.resumeURL; // Replace with your Google Drive resume URL
    if (await canLaunch(resumeUrl)) {
      await launch(resumeUrl);
    } else {
      throw 'Could not launch $resumeUrl';
    }
  }
}
