
import 'package:flutter/material.dart';
import 'package:local_search/ui/pages/homepage/widgets/home_page_widget.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //text controller
  TextEditingController textEditingController = TextEditingController();

  //Search with Input
  void onSearch(String text) {
    // call json for returning the list of items
    print('well done');
  }
  //when the widget disappears from the screen
  //defining the action through dispose function
  //This will delete the input text when an action is taken
  void dispose() {
    //mandatory for using textEditingControler
    textEditingController.dispose();
    super.dispose(); 

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            GestureDetector(
              onTap: () {
                onSearch(textEditingController.text);
              },
              child: Container(
                width: 44,
                height: 44, // 1% error rate with 44 by 44 size
                //with the transparent color, it allows the whole container to be tap-able
                color: Colors.transparent,
                child: Icon(Icons.search)),
            ),
          ],
          title: TextField(
            maxLines: 1,
            controller: textEditingController,
            onSubmitted: onSearch,
            decoration: InputDecoration(
              hintText: '지역 이름 입력해주세요', //when empty
              border: MaterialStateOutlineInputBorder.resolveWith(
                (states) { //states <- (WidgetState focused or not)
                  if (states.contains(WidgetState.focused)) {
                    return OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black)
                    );
                  }
                  return OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  );
                }
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: ListView.separated(
            padding: const EdgeInsets.all(20),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: Attractions(),
                ),
              );
            }, 
            separatorBuilder: (BuildContext context, int index) => const Divider(), 
            itemCount: .length, //length of the outcome
          ),
        ),
        
      ),
    );    
  }
}