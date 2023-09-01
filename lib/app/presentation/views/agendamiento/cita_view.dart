import 'package:dropdownfield2/dropdownfield2.dart';
import 'package:flutter/material.dart';
void main()
{runApp(
  MaterialApp(
    home:CitasView(),
  )
);
}

class CitasView extends StatelessWidget {
  final tipo_citaSelected=TextEditingController();
  final lugarSelected=TextEditingController();
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();
  String nombreProfesional = '';
  static const String name = 'citas_view';


   CitasView({super.key});
  String selectServicio ="";
  String selectLugar="";
  List<String>tipo_cita=["Spa","Manicure","Pedicure", "Uñas Acrilicas","Cortes de cabello","Maquillaje profecional"];
  List<String>lugar_cita=["Itagui","Envigado"];


  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda de citas'), centerTitle: true,),
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        padding: const EdgeInsets.all(20.0),
        //este serve para el tipo de texto,centrado o la hizquierda"tipo de cita"
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Tipo de cita",
              style:TextStyle(fontSize:20,height: 2,
                color: Theme.of(context).colorScheme.primary,),
              textAlign:TextAlign.center,
              ),
              SizedBox(height:20.0),
              //esto sirve para poner el cuadro de la lista despegable se debe descargar el plugin DropDownField
              DropDownField(
                controller:tipo_citaSelected,
                hintText:"Seleccióna el tipo de servicio",
                enabled:true,
                // itemsVisibleInDropdown:6, ESTE SIRVE PARA CONTAR LA CANTIDAD DE FILAS
                itemsVisibleInDropdown:6,
                items: tipo_cita,
                onValueChanged: (value){
                  setState((){
                    selectServicio = value;


                  });
                }
              ),
              Text("Lugar de cita",
                style:TextStyle(fontSize:20,height: 2,
                  color: Theme.of(context).colorScheme.primary,),
                textAlign:TextAlign.center,
              ),
              SizedBox(height:20.0),
              Text(selectLugar,
                style:TextStyle(fontSize:20.0),
                textAlign:TextAlign.center,
              ),
              DropDownField(
                  controller:lugarSelected,
                  hintText:"Seleccióna el lugar que quieres el servicio",
                  enabled:true,
                  // itemsVisibleInDropdown:6, ESTE SIRVE PARA CONTAR LA CANTIDAD DE FILAS
                  itemsVisibleInDropdown:6,
                  items: lugar_cita,
                  onValueChanged: (value){
                    setState((){
                      selectLugar = value;


                    });
                  }
              ),
              SizedBox(height:20.0),
              Text(selectLugar,
                style:TextStyle(fontSize:20.0),
                textAlign:TextAlign.center,
              ),
              SizedBox(height:20.0),
              ListTile(
                title: Text('Hora de Cita: ${selectedTime.format(context)}'),
                onTap: () => _selectTime(context),
              ),
              ListTile(
               title: Text('Fecha de Cita: ${selectedDate.toLocal()}'.split(' ')[0]),
               onTap: () => _selectDate(context),
               ),
              SizedBox(height: 16),
              TextFormField(
                onChanged: (newValue) {
                  setState(() {
                    nombreProfesional = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Nombre del Profesional',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes agregar la lógica para guardar los datos del formulario
                },
                child: Text('Guardar cita'),
              ),

            ],

        ),

      ),

    );
  }
  void setState(Null Function() param0) {}
}







