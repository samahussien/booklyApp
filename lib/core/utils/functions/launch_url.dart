import 'package:bookly/core/utils/functions/custom_snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(context, String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    customSnackBar(context, "cannot launch this $url");
  }
}
