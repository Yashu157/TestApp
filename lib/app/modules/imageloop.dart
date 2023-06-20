import 'package:flutter/cupertino.dart';



class LinearImageSlider extends StatefulWidget {
  @override
  _LinearImageSliderState createState() => _LinearImageSliderState();
}

class _LinearImageSliderState extends State<LinearImageSlider> {
   ScrollController _scrollController = ScrollController();
   List<String>? imageUrls;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(
      initialScrollOffset: double.infinity,
    );
    imageUrls = [
      'https://cdn.fcglcdn.com/brainbees/banners/brandstrip1208-3-new-19-08-19.jpg',
      'https://cdn.fcglcdn.com/brainbees/banners/brandstrip1208-3-new-19-08-19.jpg',
      'https://cdn.fcglcdn.com/brainbees/banners/brandstrip1208-3-new-19-08-19.jpg',
      // Add more image URLs as needed
    ];
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Adjust the height as needed
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls!.length * 3, // Multiply by a factor to create a loop
        itemBuilder: (context, index) {
          final imageUrl = imageUrls![index % imageUrls!.length];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
