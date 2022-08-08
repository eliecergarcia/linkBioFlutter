import 'package:flutter/material.dart';
import 'package:linktree_flutter/button/button_tree.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Icon(
                Icons.coffee,
                size: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '@eliecer.coding',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Guadalajara, Jalisco'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Podcasts:',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonTree(
                title: 'Café Con Absa',
                onPressed: () {
                  launchUrl(Uri.parse(
                      'https://open.spotify.com/show/7xdIHuky9WSRJXCb1M2wMe'));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonTree(
                title: 'Coffee and Code',
                onPressed: () {
                  launchUrl(Uri.parse(
                      'https://open.spotify.com/show/7xdIHuky9WSRJXCb1M2wMe'));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Youtube:',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonTree(
                title: 'Absa Garcia',
                onPressed: () {
                  launchUrl(
                      Uri.parse('https://www.youtube.com/c/TheChastersBlog'));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonTree(
                title: 'Eliecer Coding',
                onPressed: () {
                  launchUrl(
                      Uri.parse('https://www.youtube.com/c/EliecerCoding'));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Comprame un Café',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonTree(
                title: 'Buy Me A Coffee',
                onPressed: () {
                  launchUrl(Uri.parse(
                      'https://www.buymeacoffee.com/eliecerabsalongarcia'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
