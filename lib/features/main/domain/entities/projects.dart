import 'package:portofolio/gen/assets.gen.dart';

class ProjectsEntity {
  final String? title;
  final String? description;
  final String? image;
  final String? link;
  final String? playStoreLink;
  final String? appStoreLink;
  final String? githubLink;
  final String? appGalleryLink;
  final List<String>? screenShots;

  ProjectsEntity({
    required this.title,
    required this.description,
    required this.image,
    required this.link,
    required this.playStoreLink,
    required this.appStoreLink,
    required this.githubLink,
    required this.appGalleryLink,
    required this.screenShots,
  });
}

List<ProjectsEntity> projects = [
  ProjectsEntity(
    title: 'Fittest',
    description:
        'Fittest is a fitness application that helps users track their workouts and fitness goals.',
    image: Assets.images.fittest.fittest.path,
    link: 'https://fittest.com',
    playStoreLink: 'https://play.google.com/store/apps/details?id=com.fittest',
    appStoreLink: 'https://apps.apple.com/us/app/fittest/id123456789',
    githubLink: 'https://github.com/fittest',
    appGalleryLink: 'https://appgallery.huawei.com/app/C105852777',
    screenShots: [
      Assets.images.fittest.fittest.path,
      Assets.images.fittest.a1.path,
      Assets.images.fittest.a2.path,
      Assets.images.fittest.a3.path,
      Assets.images.fittest.a4.path,
    ],
  ),
  ProjectsEntity(
    title: 'Rafeel',
    description:
        'Rafeel is a fitness application that helps users track their workouts and fitness goals.',
    image: Assets.images.rafeel.appLogo.path,
    link: 'https://rafeel.com',
    playStoreLink: 'https://play.google.com/store/apps/details?id=com.rafeel',
    appStoreLink: 'https://apps.apple.com/us/app/rafeel/id123456789',
    githubLink: 'https://github.com/fittest',
    appGalleryLink: 'https://appgallery.huawei.com/app/C105852777',
    screenShots: [
      Assets.images.rafeel.appLogo.path,

      Assets.images.rafeel.a1.path,
      Assets.images.rafeel.a2.path,
      Assets.images.rafeel.a3.path,
      Assets.images.rafeel.a4.path,
    ],
  ),
  ProjectsEntity(
    title: 'sakani',
    description:
        'Sakani is a fitness application that helps users track their workouts and fitness goals.',
    image: Assets.images.sakani.appLogoImage.path,
    link: 'https://rafeel.com',
    playStoreLink: 'https://play.google.com/store/apps/details?id=com.rafeel',
    appStoreLink: 'https://apps.apple.com/us/app/rafeel/id123456789',
    githubLink: 'https://github.com/fittest',
    appGalleryLink: 'https://appgallery.huawei.com/app/C105852777',
    screenShots: [
      
      Assets.images.sakani.appLogoImage.path,

      Assets.images.sakani.a1.path,
      Assets.images.sakani.a2.path,
      Assets.images.sakani.a4.path,
      Assets.images.sakani.a5.path,
    ],
  ),

  ProjectsEntity(
    title: 'shubic lubic',
    description:
        'Shubic Lubic is a fitness application that helps users track their workouts and fitness goals.',
    image: Assets.images.shubicLubic.appLogo.path,
    link: 'https://rafeel.com',
    playStoreLink: 'https://play.google.com/store/apps/details?id=com.rafeel',
    appStoreLink: 'https://apps.apple.com/us/app/rafeel/id123456789',
    githubLink: 'https://github.com/fittest',
    appGalleryLink: 'https://appgallery.huawei.com/app/C105852777',
    screenShots: [
      Assets.images.shubicLubic.appLogo.path,

      Assets.images.shubicLubic.a1.path,
      Assets.images.shubicLubic.a2.path,
      Assets.images.shubicLubic.a4.path,
      Assets.images.shubicLubic.a5.path,
    ],
  ),
];
