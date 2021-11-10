import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  // List<Color> colors = [
  //   Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  //   Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  //   Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  //   Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  //   Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  //   Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  //   Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  //   Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  //   Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  //   Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  // ];
  //to generate list of different colors

  // bool isSelected = false;
  //
  // void _chipPressed(String? text) {
  //   var snackBar = SnackBar(content: Text(text!));
  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 400,
          height: 500,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                //1. You add a container with a color overlay with a 60% semi-transparent
                // background to make the image appear darker.
                // 2. This gives the appearance of rounded image corners.
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Wrap(
                  //Wrap is a layout widget that attempts to lay out each of its children adjacent to
                  // the previous children. If there’s not enough space, it wraps to the next line
                  alignment: WrapAlignment.start,
                  //Place the children as close to the left, i.e. the start, as possible.
                  spacing: 12,
                  children: [
                    Chip(
                      // A Chip widget is a display element that displays text and image avatars,
                      // and also performs user actions such as tap and delete.
                      label: Text('Healthy',
                          style: FooderlichTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {},
                    ),
                    Chip(
                      label: Text('Vegan',
                          style: FooderlichTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {},
                    ),
                    /*
                    Chip(
                      label: Text('Carrots',
                          style: FooderlichTheme.darkTextTheme.bodyText1),
                      backgroundColor: colors[2].withOpacity(0.7),
                      avatar: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: const Text('D'),
                      ),
                      labelPadding: EdgeInsets.all(4.0),
                      shadowColor: colors[2],
                      elevation: 10.0,
                      deleteIcon: const Icon(Icons.cancel),
                      onDeleted: () {
                        setState(() {
                          !isSelected;
                        });
                      },
                    ),
                    InputChip(
                      avatar: CircleAvatar(
                        backgroundColor: colors[3].withOpacity(0.7),
                        child: Text('D'),
                      ),
                      label: Text('David'),
                      onPressed: () => _chipPressed('Input chip'),
                    ),
                    ChoiceChip(
                      label: const Text('Small'),
                      selected: isSelected,
                      onSelected: (bool deleteChip) {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      selectedColor: isSelected
                          ? Colors.red.withOpacity(0.7)
                          : Colors.green.withOpacity(0.7),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ChoiceChip(
                      label: const Text('Big'),
                      selected: isSelected,
                      onSelected: (bool deleteChip) {
                        setState(() {
                          deleteChip = false;
                        });
                      },
                      selectedColor: isSelected
                          ? Colors.red.withOpacity(0.7)
                          : Colors.green.withOpacity(0.7),
                    ),
                    FilterChip(
                      label: Text('FilterChip'),
                      labelStyle: TextStyle(
                          color: isSelected ? Colors.black : Colors.white),
                      selected: isSelected,
                      onSelected: (bool selected) {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      selectedColor: Theme.of(context).accentColor,
                      checkmarkColor: Colors.black,
                    ),
                    ActionChip(
                      avatar: isSelected ? CircularProgressIndicator() : null,
                      label:
                          Text('${isSelected ? 'Downloading...' : 'Download'}'),
                      labelStyle: TextStyle(color: Colors.white),
                      onPressed: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                    ),
                    */
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
