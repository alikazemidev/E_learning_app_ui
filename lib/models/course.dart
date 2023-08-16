class Course {
  final String author;
  final String authorImage;
  final String title;
  final String imageUrl;

  Course({
    required this.author,
    required this.authorImage,
    required this.title,
    required this.imageUrl,
  });

  static List<Course> courseList = [
    Course(
      author: 'ali k',
      authorImage: "assets/icons/avatar01.png",
      title: 'Course 1',
      imageUrl: "assets/images/course01.png",
    ),
    Course(
      author: 'sara b',
      authorImage: "assets/icons/avatar02.png",
      title: 'Course 1',
      imageUrl: "assets/images/course02.png",
    ),
    Course(
      author: 'babak z',
      authorImage: "assets/icons/avatar03.png",
      title: 'Course 1',
      imageUrl: "assets/course03.png",
    ),
  ];
}
