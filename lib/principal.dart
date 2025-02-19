import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  //Seccion var
  //1f
  List<bool> isSwapped = [false, false, false, false, false];
  void swap(int index)
  {
    setState(() {
      isSwapped[index] = !isSwapped[index];
    });
  }
  //2f
  //3f
  List<bool> isChanged = [false, false, false, false, false];
  void cambiarColor4Fila(int index)
  {
    setState(() {
      isChanged[index] = !isChanged[index];
    });
  }
  //4f
  List<bool> isTextVisible = [false, false, false, false, false];
  void toggleText(int index)
  {
    setState(() {
      isTextVisible[index] = !isTextVisible[index];
    });
  }
  //5f
  List<bool> isSandwich = [false, false];
  void makeSandwich(int index) 
  {
    setState(() {
      isSandwich[index] = !isSandwich[index];
    });
  }
  //6f
  //Fin seccion var

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //primer Fila Cambio con sexta
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => swap(0),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSwapped[0] ? const Color.fromARGB(255, 156, 118, 3) : Colors.green,
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => swap(1),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSwapped[1] ? Colors.purpleAccent : Colors.blue,
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => swap(2),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSwapped[2] ? const Color.fromARGB(255, 82, 5, 0) : Colors.red,
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => swap(3),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSwapped[3] ? const Color.fromARGB(255, 255, 230, 0) : Colors.pink,
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => swap(4),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSwapped[4] ? const Color.fromARGB(255, 61, 45, 45): Colors.purple,
                    )
                  ),
                  )
                    
                ],
            )
          ),
          //Segunda fila NADA
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded( 
                  flex: 4,
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: Colors.yellow,
                    )
                  ),
                  Expanded( 
                  flex: 4,
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: Colors.white,
                    )
                  ),
                  Expanded( 
                  flex: 4,
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: Colors.indigo,
                    )
                  ),
                  Expanded( 
                  flex: 4,
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: Colors.amber,
                    )
                  ),
                  Expanded( 
                  flex: 4,
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: Colors.cyan,
                    )
                  ),
                ],
            )
          ),
          //tercer fila texto de colores
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => cambiarColor4Fila(0),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isChanged[0] ? Colors.black : Colors.redAccent,
                      child: Text(
                        'RedAccent',
                        style: TextStyle(color: isChanged[0] ? Colors.redAccent : Colors.black, fontSize: 24),
                      ),
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => cambiarColor4Fila(1),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isChanged[1] ? Colors.black : Colors.lime,
                      child: Text(
                        'Lime',
                        style: TextStyle(color: isChanged[1]? Colors.lime : Colors.black, fontSize: 24),
                      ),
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => cambiarColor4Fila(2),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isChanged[2] ? Colors.black : Colors.teal,
                      child: Text(
                        'Teal',
                        style: TextStyle(color: isChanged[2] ? Colors.teal : Colors.black, fontSize: 24),
                      ),
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => cambiarColor4Fila(3),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isChanged[3] ? Colors.black : Colors.white70,
                      child: Text(
                        'white70',
                        style: TextStyle(color: isChanged[3] ? Colors.white70 : Colors.black, fontSize: 24),
                      ),
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => cambiarColor4Fila(4),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isChanged[4] ? Colors.black : Colors.lightGreen,
                      child: Text(
                        'LightGreen',
                        style: TextStyle(color: isChanged[4] ? Colors.lightGreen : Colors.black, fontSize: 24),
                      ),
                    )
                  )
                    
                  ),
                ],
            )
          ),
          //cuarta fila Texto que aparece cambiar a que en lugar de aparecer en el container aparezca en consola
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded( 
                  flex: 4,
                    child:InkWell(
                      onTap: () => toggleText(0),
                      child: Container(
                        width: 100,
                        height: MediaQuery.of(context).size.height / 3, //33%
                        color: const Color.fromARGB(255, 172, 214, 173),
                        child: isTextVisible[0] ?
                        Text(
                          'T1',
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )
                        : null,
                      )
                    )  
                  ),
                  Expanded( 
                  flex: 4,
                    child: InkWell(
                      onTap: () => toggleText(1),
                      child: Container(
                        width: 100,
                        height: MediaQuery.of(context).size.height / 3, //33%
                        color: const Color.fromARGB(255, 45, 74, 99),
                        child: isTextVisible[1] ?
                        Text(
                          'T2',
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )
                        : null,
                      )
                    )
                    
                  ),
                  Expanded( 
                  flex: 4,
                    child: InkWell(
                      onTap: () => toggleText(2),
                      child: Container(
                        width: 100,
                        height: MediaQuery.of(context).size.height / 3, //33%
                        color: const Color.fromARGB(255, 255, 17, 0),
                        child: isTextVisible[2] ?
                        Text(
                          'T3',
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )
                        : null,
                      )
                    )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => toggleText(3),
                    child: Container(
                        width: 100,
                        height: MediaQuery.of(context).size.height / 3, //33%
                        color: const Color.fromARGB(255, 124, 0, 41),
                        child: isTextVisible[3] ?
                        Text(
                          'T4',
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )
                        : null,
                      )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => toggleText(4),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: const Color.fromARGB(255, 217, 0, 255),
                      child: isTextVisible[4] ?
                        Text(
                          'T4',
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )
                        : null,
                    )
                  )
                    
                  ),
                ],
            )
          ),
          //quinta fila cambio de color tipo sandwich
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => makeSandwich(0),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSandwich[0] ? const Color.fromARGB(255, 192, 125, 204) : Colors.cyanAccent,
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => makeSandwich(1),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSandwich[1] ? Colors.tealAccent : const Color.fromARGB(255, 119, 28, 0),
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: Colors.indigoAccent,
                    )
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => makeSandwich(1),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSandwich[1] ? const Color.fromARGB(255, 119, 28, 0) : Colors.tealAccent,
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => makeSandwich(0),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSandwich[0] ? Colors.cyanAccent : const Color.fromARGB(255, 192, 125, 204),
                    )
                  )
                    
                  ),
                ],
            )
          ),
          //sexta fila Cambio de color con la primer fila 
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => swap(0),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSwapped[0] ? Colors.green : const Color.fromARGB(255, 156, 118, 3),
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => swap(1),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSwapped[1] ? Colors.blue: Colors.purpleAccent,
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => swap(2),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSwapped[2] ? Colors.red : const Color.fromARGB(255, 82, 5, 0),
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => swap(3),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSwapped[3] ? Colors.pink : const Color.fromARGB(255, 255, 230, 0),
                    )
                  )
                    
                  ),
                  Expanded( 
                  flex: 4,
                  child: InkWell(
                    onTap: () => swap(4),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height / 3, //33%
                      color: isSwapped[4] ? Colors.purple : const Color.fromARGB(255, 61, 45, 45),
                    )
                  ),
                  )
                ],
            )
          ),
        ],
      ),
    );
  }
}