class Task {
  String text;
   bool isCheck;
   Task({required this.text,this.isCheck = false});


   void toggleDone(){
    isCheck = !isCheck;
  }

}