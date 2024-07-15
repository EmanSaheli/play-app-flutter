 import 'package:flutter/material.dart';
 
 //import 'package:audioplayers/audio_cache.dart';
 import 'package:audioplayers/audioplayers.dart';
  

 void main() {
  runApp( const MyWidget());
}

 class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
   void playSora( int soraNum){
     final player = AudioPlayer();
                 player.play(AssetSource('sora-$soraNum.mp3'));
    }
       
       
         //الاقواس المتعرجه من داخل تسمح بنداء بدون ترتيب المدخلات
    Expanded myButton( int soraNum,Color buttonColor ,String buttonText){
      return Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom:2.0),
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                   
                   backgroundColor: const Color.fromARGB(255, 166, 117, 151)),
                    
                    onPressed: () {
                    playSora(soraNum);
                   // final player = AudioPlayer();
                     //player.play(AssetSource('sora_1.mp3'));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Row(
                      children: [
                        Icon(Icons.book_sharp, 
                        color: buttonColor,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Text(buttonText,
                        style: TextStyle(
                          color:buttonColor,
                          fontSize: 20.0,
                              
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
            );
    }
  @override
  Widget build(BuildContext context) {
     
     return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 58, 194, 194),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 105, 96, 185),
          title:  const Text("سور  من القران الكريم"),
          
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(  1, const Color.fromARGB(255, 241, 243, 242) , 'سورة الملك'),
            myButton(  2 ,   const Color.fromARGB(255, 236, 233, 232),  'سورة البينة'),
            myButton(  3  ,  const Color.fromARGB(255, 236, 238, 238), 'سورة الشمس'),
            myButton(  4 ,  const Color.fromARGB(255, 247, 249, 249),  'سورة الضحى'),
            
             
          ],
        ),
      ),
    );
  }
}
      