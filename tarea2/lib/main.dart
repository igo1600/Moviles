import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MyApp createState() => MyApp();
}

void main() => runApp(MainPage());

SnackBar snack(String message) {
  return new SnackBar(
      content: Text(message.toString()),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ));
}

class MyApp extends State<MainPage> {
  int count = 0;
  var ComidaB = Colors.black;
  var dataB = Colors.black;
  var locationB = Colors.black;
  var likeB = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenido al ITESO'),
          backgroundColor: Color.fromARGB(255, 9, 79, 136),
        ),
        body: SingleChildScrollView(
            child: Builder(
                builder: (context) => Column(
                      children: [
                        Image.network(
                            "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
                        ListTile(
                            title: Text(
                                "El ITESO Universidad Jesuita de Guadalajara",
                                style: new TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            trailing: SizedBox(
                                width: 130,
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.thumb_up),
                                      color: likeB,
                                      onPressed: () => setState(() => {
                                            if(count == 1){
                                              count--,
                                              likeB = Colors.grey
                                            }else{
                                              count = 1,
                                              likeB = Colors.blue
                                            },
                                          }),
                                    ),
                                    Flexible(
                                        child: new Text(count.toString()))
                                  ],
                                ))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                    color: ComidaB,
                                    icon: Icon(
                                      Icons.restaurant,
                                    ),
                                    iconSize: 50,
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snack("Puedes encontrar comida en sus cafeter??as"));
                                      setState(() => {
                                            ComidaB == Colors.black
                                                ? ComidaB = Colors.indigo
                                                : ComidaB = Colors.black
                                          });
                                    }),
                                Text("Comida")
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    color: dataB,
                                    icon: Icon(
                                      Icons.info,
                                    ),
                                    iconSize: 50,
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snack("Puedes pedir informaci??n en rector??a"));
                                      setState(() => {
                                            dataB == Colors.black
                                                ? dataB = Colors.indigo
                                                : dataB = Colors.black
                                          });
                                    }),
                                Text("Informaci??n")
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    color: locationB,
                                    icon: Icon(
                                      Icons.pin_drop,
                                    ),
                                    iconSize: 50,
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snack("Se encuentra ubicado en Perif??rico Sur 8585"));
                                      setState(() => {
                                            locationB == Colors.black
                                                ? locationB = Colors.indigo
                                                : locationB = Colors.black
                                          });
                                    }),
                                Text("Ubicaci??n")
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 40),
                          child: Text(
                            "Es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, M??xico, fundada en el a??o 1957. La instituci??n forma parte del Sistema Universitario Jesuita que integra a ocho universidades en M??xico.",
                            textAlign: TextAlign.justify,
                            style: new TextStyle(fontSize: 17),
                          ),
                        )
                      ],
                    ))),
      ),
    );
  }
}