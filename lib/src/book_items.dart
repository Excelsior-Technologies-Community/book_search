class BookItem {

  final String title;

  final String author;

  final String? imageUrl;

  final String? description;

  const BookItem({
    required this.title,
    required this.author,
    this.imageUrl,
    this.description,
  });
}