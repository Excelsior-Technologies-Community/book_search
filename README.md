# Flutter Book Search

A lightweight and reusable Flutter book search package with local search, list/grid views, filtering, and customizable UI.

Perfect for:
- ebook apps
- library apps
- learning apps
- book stores
- note apps
- reading trackers

---

# ✨ Features

- 🔍 Local Book Search
- 📚 Reusable Search Widget
- 📋 List View Support
- 🟦 Grid View Support
- ⚡ Real-time Filtering
- 🧠 Search by Title & Author
- 📱 Responsive UI
- ❌ Empty State Support
- 🎨 Customizable Architecture
- 🪶 Lightweight & Fast

---

### demo


https://github.com/user-attachments/assets/a98b1ff3-a2f2-47dd-a7b1-92fac4e14b21



# 📦 Installation

Add dependency in your `pubspec.yaml`:

```yaml
dependencies:
  flutter_book_search: 
  path: ../
```

Then run:

```bash
flutter pub get
```

---

# 🚀 Import

```dart
import 'package:flutter_book_search/flutter_book_search.dart';
```

---

# 🛠 Basic Usage

```dart
BookSearch(

  books: const [

    BookItem(
      title: 'Atomic Habits',

      author: 'James Clear',
    ),

    BookItem(
      title: 'Harry Potter',

      author: 'J.K Rowling',
    ),
  ],
)
```

---

# 📱 Full Example

```dart
import 'package:flutter/material.dart';

import 'package:flutter_book_search/flutter_book_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Search')),

      body: BookSearch(
        showGridView: false,

        books: const [
          BookItem(title: 'Atomic Habits', author: 'James Clear'),

          BookItem(title: 'Harry Potter', author: 'J.K Rowling'),

          BookItem(title: 'Rich Dad Poor Dad', author: 'Robert Kiyosaki'),
          BookItem(
            title: "Dear writter you need to quite",
            author: "becca syme",
          ),
          BookItem(title: "Writers and lovers", author: "lily king",),
        ],
      ),
    );
  }
}

```

---

# 📚 BookItem Model

```dart
BookItem(

  title: 'Atomic Habits',

  author: 'James Clear',

  imageUrl: 'https://...',

  description:
      'A self-help book...',
)
```

---

# ⚙️ Available Parameters

| Parameter | Type | Description |
|---|---|---|
| `books` | `List<BookItem>` | List of books |
| `showGridView` | `bool` | Enable grid layout |
| `showSearchBar` | `bool` | Show/hide search field |

---

# 🔍 Search Features

The package automatically:
- searches by title
- searches by author
- filters in realtime
- updates UI instantly

---

# 📋 List View

```dart
showGridView: false
```

# 🟦 Grid View

```dart
showGridView: true
```

---

# ❌ Empty State

Automatically shows:

```text
No books found
```

when search results are empty.

---



# 📂 Package Structure

```text
lib/
 ├── flutter_book_search.dart
 └── src/
      ├── book_search.dart
      ├── book_item.dart
      
      
```

---


# 📄 License

MIT License

Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
