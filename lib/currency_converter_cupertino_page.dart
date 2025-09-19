import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterMaterialPageState();




}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterCupertinoPage> {
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

  
  @override
  Widget build(BuildContext context) {
   final border=OutlineInputBorder(
                borderSide: BorderSide(
                  // width: 10,
                  color: Color.fromARGB(255, 18, 18, 17),
                  style: BorderStyle.solid,

                ),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              
    );
    return  CupertinoPageScaffold(
      backgroundColor: Color.fromRGBO(87, 139, 162, 0.965),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: const Color.fromRGBO(87, 139, 162, 0.965),
        //  elevation: 0,
        middle: const Text('currency converter', style: TextStyle(
          color: Colors.amberAccent
        )
        ),
        transitionBetweenRoutes : true,
       
      ),
      child: Center(
        child: Padding(
          
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
              CupertinoTextField(
                
                      placeholder: 'ENTER INR AMOUNT',
                       placeholderStyle: TextStyle(color: CupertinoColors.black),
                      // groupId: placeholderStyle = const TextStyle(fontWeight: FontWeight.w400, color: Color.fromARGB(75, 226, 226, 233)),
                  
                        prefix: Icon(
                 Icons.monetization_on_outlined,
                //  color: Color.fromARGB(255, 25, 12, 124),
                color: CupertinoColors.black,
                ),
                // decoration: BoxDecoration(
                //   color: CupertinoColors.destructiveRed,
                 
                // ),
           
              // focusedBorder: border,
              //   enabledBorder:border
                style: TextStyle(
                  color: CupertinoColors.black,
                  ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius:BorderRadius.circular(5) ,
                  color: CupertinoColors.white
                
                 
                  // label: Text('ENTER INR AMOUNT', style: TextStyle(
                  //   color: Colors.white
                  // ),),
                  // labelText: 'ENTER INR AMOUNT',
                 
                 
                 
                
                
                
               
                
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

