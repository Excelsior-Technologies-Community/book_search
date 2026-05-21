import 'package:flutter/material.dart';
import 'package:flutter_book_search/src/book_items.dart';

class BookSearch extends StatefulWidget {
  final List<BookItem> books;

  final bool showGridView;

  final bool showSearchBar;

  const BookSearch({
    super.key,
    required this.books,
    this.showGridView = false,
    this.showSearchBar = true,
  });

  @override
  State<BookSearch> createState() => _BookSearchState();
}

class _BookSearchState extends State<BookSearch> {
  final controller = TextEditingController();

  late List<BookItem> filteredBooks;

  @override
  void initState() {
    super.initState();

    filteredBooks = widget.books;
  }

  void searchBooks(String query) {
    filteredBooks = widget.books.where((book) {
      return book.title.toLowerCase().contains(query.toLowerCase()) ||
          book.author.toLowerCase().contains(query.toLowerCase());
    }).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// SEARCH BAR
        if (widget.showSearchBar)
          Padding(
            padding: const EdgeInsets.all(20),

            child: TextField(
              controller: controller,

              onChanged: searchBooks,

              decoration: InputDecoration(
                hintText: 'Search books',

                prefixIcon: const Icon(Icons.search),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

        /// EMPTY STATE
        if (filteredBooks.isEmpty)
          const Expanded(child: Center(child: Text('No books found')))
        else
        /// GRID VIEW
        if (widget.showGridView)
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,

                crossAxisSpacing: 12,

                mainAxisSpacing: 12,

                childAspectRatio: 0.65,
              ),

              itemCount: filteredBooks.length,

              itemBuilder: (_, index) {
                final book = filteredBooks[index];

                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        /// IMAGE
                        Expanded(
                          child: book.imageUrl == null
                              ? Container(color: Colors.grey.shade300)
                              : Image.network(
                                  book.imageUrl!,
                                  fit: BoxFit.cover,
                                ),
                        ),

                        const SizedBox(height: 10),

                        Text(
                          book.title,

                          maxLines: 2,

                          overflow: TextOverflow.ellipsis,

                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),

                        Text(book.author),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        else
          /// LIST VIEW
          Expanded(
            child: ListView.builder(
              itemCount: filteredBooks.length,

              itemBuilder: (_, index) {
                final book = filteredBooks[index];

                return ListTile(
                  leading: book.imageUrl == null
                      ? const Icon(Icons.menu_book)
                      : Image.network(
                          book.imageUrl!,
                          width: 50,
                          fit: BoxFit.cover,
                        ),

                  title: Text(book.title),

                  subtitle: Text(book.author),
                );
              },
            ),
          ),
      ],
    );
  }
}
