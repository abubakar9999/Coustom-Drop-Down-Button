import 'package:flutter/material.dart';
class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({Key? key}) : super(key: key);

  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {

  String selected_number="Add your list";

   List data=[
    "Item--1",
    "Item--2",
    "Item--3",
    "Item--4",
    "Item--5",
    "Item--6",
    "Item--7",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.only(left: 16,right: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: 1),
                borderRadius: BorderRadius.circular(15)
              ),

              child: DropdownButton(
                underline: SizedBox(),
                hint:  Text(selected_number,style: TextStyle(fontSize: 20,color:Colors.green),),
                dropdownColor: Colors.white,
                isExpanded: true,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
               style: TextStyle(
              color: Colors.black
              ,
              fontSize: 22
               ),

               
                onChanged: ( index){
                  setState(() {
                    selected_number=index.toString();
                  });
                },

                 items: data.map((velueItem){
              return DropdownMenuItem(
                value:velueItem ,
                child: Text(velueItem,style: TextStyle(color: Colors.red),),
              
              );
        } ).toList(),
              ),
            ),
          ),



          Text("Your Selected Item is /'  $selected_number ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        ],),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class MyDropDrownButton extends StatefulWidget {
//   const MyDropDrownButton({Key? key}) : super(key: key);

//   @override
//   State<MyDropDrownButton> createState() => _MyDropDrownButtonState();
// }

// class _MyDropDrownButtonState extends State<MyDropDrownButton> {
//   String? valuechoich;
//   List data=[
//     "Item1",
//     "Item2",
//     "Item3",
//     "Item4",
//     "Item5",
//     "Item6",
//     "Item7",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: DropdownButton(
//         hint: Text("Select Items"),
//         value: valuechoich,
//         onChanged: (newvalue){
//           setState(() {
//             valuechoich!=newvalue;
//           });
//         },
  
//         items: data.map((velueItem){
//             return DropdownMenuItem(
//               value:velueItem ,
//               child: Text(velueItem,style: TextStyle(color: Colors.red),),
            
//             );
//         } ).toList(),
        

      
//       )
//       )
//     );


    
    
//   }

// }