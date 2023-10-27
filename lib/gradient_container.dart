import 'package:basics/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// Method 2
class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key){

  // for List Method
  // GradientContainer({super.key, required this.colors}) {
  //   //or, GradientContainer(this.colors, {super.key}) {
  //   // initialization work
  // }
  // final List<Color> colors;

  // for Method 2
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// Method 1
// class GradientContainer extends StatelessWidget {
//   // GradientContainer({key}): super(key: key){
//   GradientContainer({super.key, required this.colors}) {
//   //or, GradientContainer(this.colors, {super.key}) {
//     // initialization work
//   }
//   final List<Color> colors;
//
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('BHARAT'),
//       ),
//     );
//   }
// }
