import 'package:equatable/equatable.dart';

class Teacher extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Teacher({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Teacher> teachers = [
    Teacher(
      id: '1',
      title:
          'Lorem ipsum dolor sit amet, consectetur elit. Cras molestie maximus',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://img.freepik.com/free-photo/happy-successful-muslim-businesswoman-posing-outside_74855-2007.jpg?size=626&ext=jpg&uid=R1341331&ga=GA1.2.1258295344.1678644097&semt=sph',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://img.freepik.com/free-photo/happy-successful-muslim-businesswoman-posing-outside_74855-2007.jpg?size=626&ext=jpg&uid=R1341331&ga=GA1.2.1258295344.1678644097&semt=sph',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Teacher(
      id: '2',
      title:
          'Sed sed molestie libero, et massa. Donec auctor vestibulum pellentesque',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://img.freepik.com/free-photo/young-red-woman-bench_1385-3098.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://img.freepik.com/free-photo/young-red-woman-bench_1385-3098.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Teacher(
      id: '3',
      title:
          'Aliquam ullamcorper ipsum, vel consequat sem finibus a. Donec lobortis',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://img.freepik.com/free-photo/cheerful-curly-business-girl-wearing-glasses_176420-206.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Teacher(
      id: '4',
      title: 'Proin mattis nec lorem at rutrum. Curabitur sit augue vel',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
    ),
    Teacher(
      id: '5',
      title:
          'Donec lobortis lectus a iaculis rutrum. Vestibulum libero sit amet',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://img.freepik.com/free-photo/happy-arab-woman-hijab-portrait-smiling-girl-posing-red-studio-background-young-emotional-woman-human-emotions-facial-expression-concept-front-view_155003-22795.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://img.freepik.com/free-photo/happy-arab-woman-hijab-portrait-smiling-girl-posing-red-studio-background-young-emotional-woman-human-emotions-facial-expression-concept-front-view_155003-22795.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        createdAt,
      ];
}
