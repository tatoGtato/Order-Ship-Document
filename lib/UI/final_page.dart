import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprint1/UI/carrito_total.dart';
import 'package:sprint1/UI/resumen_productos.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({super.key});

  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Facturacion',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: 10, top: 20, left: 23, right: 20),
                      child: Text('Datos del pedido',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              fontFamily: 'RoboBol')),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 220, 246, 250),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 2.0, color: Colors.orange),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 450.0,
                    maxWidth: 450.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Nombre:   ${Get.arguments[0]} \nDirección:   ${Get.arguments[2]} \nTelefono:   ${Get.arguments[1]}\nObservaciones: \n${Get.arguments[3]} ',
                      style: TextStyle(fontSize: 15, fontFamily: 'RoboReg'),
                    ),
                  ),
                ),
                Text(
                  'Pedido',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  child: CartScreen(),
                ),
                Text(
                  'Precio total',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 2.0, color: Colors.orange),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 450.0,
                    maxWidth: 450.0,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CartTotal()),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          //Get.to(Pagina anterior());
                        },
                        icon: Image.asset(
                            '../../assets/images/whatsapp_logo.png',
                            width: 35,
                            height: 35),
                        label: Text(''),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 16),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                color: Colors.orange,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
