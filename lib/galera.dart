// import 'package:flutter/material.dart';

// class ImageGallery extends StatefulWidget {
//   @override
//   _ImageGalleryState createState() => _ImageGalleryState();
// }

// class _ImageGalleryState extends State<ImageGallery> {
//   final PageController _controller = PageController();
//   int _currentIndex = 0;

//   final List<String> _images = [
//     'assets/image1.png',
//     'assets/image2.png',
//     'assets/image3.png',
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _startAutoSlide();
//   }

//   void _startAutoSlide() {
//     Future.delayed(Duration(seconds: 2), () {
//       if (_controller.hasClients) {
//         int nextPage = _currentIndex + 1;
//         if (nextPage >= _images.length) {
//           nextPage = 0;
//         }
//         _controller.animateToPage(
//           nextPage,
//           duration: Duration(seconds: 1),
//           curve: Curves.easeInOut,
//         );
//         setState(() {
//           _currentIndex = nextPage;
//         });
//         _startAutoSlide();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Gallery'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: PageView.builder(
//           controller: _controller,
//           itemCount: _images.length,
//           itemBuilder: (context, index) {
//             return Center(
//               child: SizedBox(
//                 width: 400,
//                 height: 200,
//                 child: Image.asset(_images[index], fit: BoxFit.cover),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ImageGallery extends StatefulWidget {
  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<String> _images = [
    'assets/image1.png',
    'assets/image2.png',
    'assets/image3.png',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    Future.delayed(Duration(seconds: 2), () {
      if (_controller.hasClients) {
        int nextPage = _currentIndex + 1;
        if (nextPage >= _images.length) {
          nextPage = 0;
        }
        _controller.animateToPage(
          nextPage,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
        setState(() {
          _currentIndex = nextPage;
        });
        _startAutoSlide();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Gallery'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return PageView.builder(
              controller: _controller,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return Center(
                  child: SizedBox(
                    width: 500,
                    height: 250,
                    child: Image.asset(_images[index], fit: BoxFit.cover),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
