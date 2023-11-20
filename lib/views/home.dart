import 'package:flutter/material.dart';
// import 'package:plantapp/customwidgets.dart/customcolumn.dart';
import 'package:plantapp/views/widgets/circleava.dart';
import 'package:plantapp/views/widgets/plant.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
            
              Row(
                
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: CircleAvatar(
      
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
      
                    
                  ),
      SizedBox(width: 70,),
                  Text("Plantnob",style: TextStyle(
                    fontSize: 18
                  ),),
      
      SizedBox(width: 75,),
                  Icon(Icons.search),
                  SizedBox(width: 20,),
                  Icon(Icons.filter_list_alt)
      
      
                ],
              ),
      
      
      SizedBox(height: 30,),
        //  ListTile(
        //   leading: CircleAvatar(
        //     foregroundColor: Colors.black,
        //   ),
        //  )
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 30,),
        Container(
          decoration: BoxDecoration(
             shape: BoxShape.circle,
        color: Colors.black87,
          ),
          
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Plant(),));
            },
            child: customcircle("assets/images/images1.jpg", 20))),

         
      SizedBox(width: 30,),
      
        Container(
          decoration: BoxDecoration(
             shape: BoxShape.circle,
        color: Colors.black,
          ),
          
          child: customcircle("assets/images/pot.jpg", 20)),
      
      
      
      SizedBox(width: 30,),
      
          Container(
          decoration: BoxDecoration(
             shape: BoxShape.circle,
        color: Colors.black,
          ),
          
          child: customcircle("assets/images/mature.jpg", 20)),
      
      
      
          SizedBox(
      
      width: 20,
      
          ),
      
      
      
      
      
      
        Container(
          decoration: BoxDecoration(
             shape: BoxShape.circle,
        color: Colors.black,
          ),
          
          child: customcircle("assets/images/images.jpg", 30)),
      
      
      
        ],
      ),
      
      
      
      
      SizedBox(height: MediaQuery.of(context).size.height *0.1,),



Container(
  height: MediaQuery.of(context).size.height * 7,
  width: MediaQuery.of(context).size.width,
  color: Color(0xffAFC29B),

  child: Column(
    children: [
// SizedBox(height: MediaQuery.of(context).size.height * 05,),
SizedBox(height: 10,),

Text("Upto 20%  discount  | Foliage Plant"),
SizedBox(height: 10,),
// Expanded(child: GridView.builder(

//   shrinkWrap: true,

//   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

  

//   crossAxisCount: 2

  

//   ), itemBuilder: (context, index) {


// return Container(
// child: Column(
//   children: [
//     Image.asset("assets/images/profile.jpg")
//   ],
// ),
// );

// //   return Card(
// //      child: Container(
// //                       height: 290,
// //                       decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(20)),
// //                       margin: EdgeInsets.all(5),
// //                       padding: EdgeInsets.all(5),

// // child: Column(
// //   children: [
// //       Image.asset(
// //                             'assets/images/profile.jpg',
// //                             fit: BoxFit.fill,
// //                           ),
// //   ],
// // ),

// //                       // child: Stack(
// //                       //   children: [
// //                       //     Image.asset(
// //                       //       'assets/images/profile.jpg',
// //                       //       fit: BoxFit.fill,
// //                       //     ),


// //                       //      Image.asset(
// //                       //       'assets/images/logo.jpg',
// //                       //       fit: BoxFit.fill,
// //                       //     )
// //                       //   ],
// //                       // ),
// //     // 
// //      )
// //   );  

//   },))



Expanded(
  child:   GridView.count(
  
  
  
  
  
  
  
    shrinkWrap: true,
  
  
  
  
  
  
  
    children: [
  
  
  
  
  
  
  
  Image.asset("assets/images/profile.jpg")
  
  
  
  
  
  
  
    ],
  
  
  
  
  
  
  
    crossAxisCount: 2,
  
  
  
  
  
  
  
    mainAxisSpacing: 20,
  
  
  
  
  
  
  
    crossAxisSpacing: 20,
  
  
  
  
  
  
  
     ),
)

    ],
  ),
)






            ]
          ),
        ),
      ),
    );
  }
}




