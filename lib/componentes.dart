import 'package:flutter/material.dart';

class componenentes extends StatefulWidget {
  const componenentes({Key? key}) : super(key: key);

  @override
  State<componenentes> createState() => _componenentesState();
}


class _componenentesState extends State<componenentes> {


  final nombres= TextEditingController();
  final apellidos= TextEditingController();
  final edad=TextEditingController();
  String zona="";
  bool isCheckedZ= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro nuevo empleado",style: TextStyle(),),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.cleaning_services_sharp))
        ],
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(

        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(40),),
            Text("Formulario",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.all(70),child:
                Column(
                  children: [
                    TextField(controller: nombres,decoration: InputDecoration(
                        labelText: "Nombre",
                        prefixIcon: Icon(Icons.abc_outlined),
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        labelStyle: TextStyle(fontSize: 13,color: Colors.black)
                    ),),
                    SizedBox(height: 20,),
                    TextField(controller: apellidos,decoration: InputDecoration(
                        labelText: "Apellidos",
                        prefixIcon: Icon(Icons.abc),
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        labelStyle: TextStyle(fontSize: 13,color: Colors.black)
                    ),),
                    SizedBox(height: 20,),
                    TextField(controller:edad ,keyboardType:TextInputType.number,decoration: InputDecoration(
                        labelText: "Ingresar edad",
                        prefixIcon: Icon(Icons.onetwothree),
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        labelStyle: TextStyle(fontSize: 13,color: Colors.black)
                    ),

                    ),
                    SizedBox(height:30),

                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 150,10),child:Text("¿Vives en zona Rural?")),

                    Row(
                      children: [

                        Row(
                          children: [
                            Checkbox(value: isCheckedZ, onChanged: (bool? valor){
                              setState(() {
                                isCheckedZ =valor!;
                                if(!isCheckedZ){
                                  zona="No vive en Zona Rural";
                                }else{
                                  zona="Si vive en Zona Rural";
                                }
                              });
                            }),
                          ],
                        ),
                       
                      ],
                    ),

                    ElevatedButton(onPressed: (){
                      showDialog(context: context, builder: (BuildContext){
                        return AlertDialog(
                          title: Text("EMPLEADO AGREGADO"),
                          content: Text("Nombre:${nombres.text}\n Apellidos: ${apellidos.text} \n Edad: ${edad.text} \n"
                              "zona: ${zona} \n GRACIAS POR SU COLABORACION"),
                        );
                      });
                    },style: TextButton.styleFrom(backgroundColor: Colors.black), child: Text("Agregar",style: TextStyle(fontSize: 13,color: Colors.white ),))
                  ],
                )
            ),
      ]
    )
        )
    );
  }
}
