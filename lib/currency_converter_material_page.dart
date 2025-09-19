// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//create a var thet store the converted currency value
//create a fn that convert the given value into inr 
// store the value in the variable that we created
// display the variable
class CurrencyConverterMaterialPage extends StatefulWidget{
 // it's immutable configuration here we add static info. like (title,color)
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage>  createState() =>
     _CurrencyConverterMaterialPageState();
    
    
   
}

  


class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  //The State class (mutable, holds changing data & logic)
  
//   With late, you tell Dart:“Trust me, I’ll initialize this before I use it.”
  // late double res;

  @override
  void initState(){
    super.initState();

  }
  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }
 late double res=0;
  final TextEditingController textEditingController=TextEditingController();
 // just like in java where we create an instamce of scanner class here
 // also we create instance of TextEditingController class
@override
  Widget build(BuildContext context){
  
      // late  double res=0;
    final border=OutlineInputBorder(
                borderSide: BorderSide(
                  // width: 10,
                  color: Color.fromARGB(255, 18, 18, 17),
                  style: BorderStyle.solid,

                ),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              
    );
    return  Scaffold(
      backgroundColor: Color.fromRGBO(87, 139, 162, 0.965),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(87, 139, 162, 0.965),
         elevation: 0,
        title: const Text('currency converter', style: TextStyle(
          color: Colors.amberAccent
        )
        ),
        centerTitle: true,
       
      ),
      body: Center(
        child: Padding(
          // first Padding is a widget to assign space to its element second padding is just property

          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: [
              Text(
                // to convert int to string we just int_val.toString
                'INR ${res !=0? res.toStringAsFixed(2):res.toStringAsFixed(0)}',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              TextField(
                  
              
                style: TextStyle(color: Color.fromRGBO(22, 17, 17, 1)),
                decoration: InputDecoration(
                  // label: Text('ENTER INR AMOUNT', style: TextStyle(
                  //   color: Colors.white
                  // ),),
                  // labelText: 'ENTER INR AMOUNT',
                  hintText: 'ENTER INR AMOUNT',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 37, 31, 31)),
                prefixIcon: Icon(
                 Icons.monetization_on_outlined,
                 color: const Color.fromARGB(255, 24, 25, 25),
                 
                //  color: Color.fromARGB(255, 25, 12, 124),
                ),
                prefixIconColor: Color.fromARGB(255, 32, 25, 25),
                filled: true,
                fillColor:Colors.white,
                focusedBorder: border,
                enabledBorder:border
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Color.fromARGB(255, 18, 18, 17),
                //     style: BorderStyle.none,
              
                //   ),
                //   borderRadius: BorderRadius.all(Radius.circular(5)),
                
                // ),
                       
                ),
                keyboardType:const TextInputType.numberWithOptions(
                  decimal: true,
                  // signed: true,
                ),
              
              
                controller: textEditingController, 
                // v.v,i it connect the convert butttom to other
                
              
              
              ),
              //button
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                // onSubmitted: (value){
                //       print(value);
                // };
              
                  // print('button click');
                  // debugPrint('hello');
                  // if(kDebugMode){
                  //   print('hello how are u');
                  // }
                  // print(textEditingController.text);
                  // print();
                  
                  
                   
                  setState(() {
                     res=double.parse(textEditingController.text)*81;
                  });
                },
              
              style:TextButton.styleFrom(
                elevation: 15,
                backgroundColor: (Color.fromARGB(255, 89, 19, 19)),
                foregroundColor: (Color.fromARGB(255, 190, 194, 220)),
               minimumSize: (Size(double.infinity, 50))
               
              ),
              //  style: const ButtonStyle(
              //    elevation:  MaterialStatePropertyAll(15),
              //   backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 89, 19, 19)),
              //   foregroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 190, 194, 220)),
              //   // textStyle: MaterialStatePropertyAll(TextStyle(color: Color.fromARGB(255, 177, 15, 101)))
              //  minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50))
               
              // //  shape: MaterialStatePropertyAll(),
              //  ),
               child: Text('convert'),
              )
              
              
            ],
          ),
        ),
      ),
    );
  }

}


/*
class CurrencyConverterMaterialPagee extends StatelessWidget {
   const CurrencyConverterMaterialPagee({super.key});
  // int res=0;
  // its is not acceptable b/c this is an immutable class so if we want to declare a nvar then we declare it with final
  
  //  final TextEditingController textEditingController=TextEditingController();


  @override
  Widget build(BuildContext context) {
      double res =0;
       final TextEditingController textEditingController=TextEditingController();

    final border=OutlineInputBorder(
                borderSide: BorderSide(
                  // width: 10,
                  color: Color.fromARGB(255, 18, 18, 17),
                  style: BorderStyle.solid,

                ),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              
    );
    return  Scaffold(
      backgroundColor: Color.fromRGBO(87, 139, 162, 0.965),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(87, 139, 162, 0.965),
         elevation: 0,
        title: const Text('currency converter', style: TextStyle(
          color: Colors.amberAccent
        )
        ),
        centerTitle: true,
       
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              // to convert int to string we just int_val.toString
              res.toString(),
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(


              padding: const EdgeInsets.symmetric(horizontal: 10),
              // margin: const EdgeInsets.all(10),
              // color: Colors.black,
              child: TextField(
                  

                style: TextStyle(color: Color.fromARGB(255, 22, 17, 17)),
                decoration: InputDecoration(
                  // label: Text('ENTER INR AMOUNT', style: TextStyle(
                  //   color: Colors.white
                  // ),),
                  // labelText: 'ENTER INR AMOUNT',
                  hintText: 'ENTER INR AMOUNT',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 37, 31, 31)),
                prefixIcon: Icon(
                 Icons.monetization_on_outlined,
                //  color: Color.fromARGB(255, 25, 12, 124),
                ),
                prefixIconColor: Color.fromARGB(255, 32, 25, 25),
                filled: true,
                fillColor:Colors.white,
                focusedBorder: border,
                enabledBorder:border
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Color.fromARGB(255, 18, 18, 17),
                //     style: BorderStyle.none,
              
                //   ),
                //   borderRadius: BorderRadius.all(Radius.circular(5)),
                
                // ),
                       
                ),
                keyboardType:const TextInputType.numberWithOptions(
                  decimal: true,
                  // signed: true,
                ), 
              ),
            ),
            //button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: (){
                // onSubmitted: (value){
                //       print(value);
                // };
              
                  // print('button click');
                  // debugPrint('hello');
                  // if(kDebugMode){
                  //   print('hello how are u');
                  // }
                  // print(textEditingController.text);
                  // print();
                  res=double.parse(textEditingController.text)*81 ;
              }, 
              style:TextButton.styleFrom(
                elevation: 15,
                backgroundColor: (Color.fromARGB(255, 89, 19, 19)),
                foregroundColor: (Color.fromARGB(255, 190, 194, 220)),
               minimumSize: (Size(double.infinity, 50))
               
              ),
              //  style: const ButtonStyle(
              //    elevation:  MaterialStatePropertyAll(15),
              //   backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 89, 19, 19)),
              //   foregroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 190, 194, 220)),
              //   // textStyle: MaterialStatePropertyAll(TextStyle(color: Color.fromARGB(255, 177, 15, 101)))
              //  minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50))
               
              // //  shape: MaterialStatePropertyAll(),
              //  ),
               child: Text('convert'),
              ),
            )
            
            
          ],
        ),
      ),
    );
  }
}
*/