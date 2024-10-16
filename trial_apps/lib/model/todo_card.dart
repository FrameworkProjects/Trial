class ToDoCard {
  String title;
  String description;
  String date;

  ToDoCard({required this.date,required this.description, required this.title});

//Map for SQFlite - stores data in key:val pair
  Map<String, dynamic> cardMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
      //'isChecked': isChecked,
    };
  }

}



