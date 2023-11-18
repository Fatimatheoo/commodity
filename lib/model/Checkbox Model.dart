
class CheckBoxModel {
  CheckBoxModel(this.Id, this.time, this.text, this.image,{required this.selected,});
  final bool selected;
  final int Id;
  final String time;
  final String text;
  final String image;
}