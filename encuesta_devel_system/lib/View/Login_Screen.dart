import 'package:encuesta_devel_system/Widget/input_decoration.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [CajaAzul(size), IconoPersona(), LoginForm(context)],
        ),
      ),
    );
  }

  //metodos

  SingleChildScrollView LoginForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 250),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 7),
                  )
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text('Login', style: Theme.of(context).textTheme.headline4),
                const SizedBox(height: 30),
                Container(
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                            autocorrect: false,
                            decoration: Input_decoration.inputDecoration(
                                hintText: 'ejemplo@ejemplo.com.gt',
                                labelText: 'Correo Electronico',
                                icono:
                                    const Icon(Icons.alternate_email_rounded)),
                                    validator: (value) {

                                    },
                                    ),
                        const SizedBox(height: 30),
                        TextFormField(
                          autocorrect: false,
                          decoration: Input_decoration.inputDecoration(
                              hintText: '**************************',
                              labelText: 'Contraseña',
                              icono: const Icon(Icons.lock_outline)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),

                        MaterialButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        disabledColor: Colors.grey, onPressed: () { },
                        color: Colors.green,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                          child: const Text('Iniciar Sesión', style: TextStyle(color: Colors.white),),
                        ),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Crear una nueva cuenta',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  SafeArea IconoPersona() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: const Icon(Icons.person_pin, color: Colors.white, size: 100),
      ),
    );
  }

  Container CajaAzul(Size size) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          // circulo 1
          Positioned(child: burbuja(), top: 90, left: 30),
          // circulo 2
          Positioned(child: burbuja(), top: -40, left: -30),
          // circulo 3
          Positioned(child: burbuja(), top: -50, right: -20),
          // circulo 4
          Positioned(child: burbuja(), bottom: -50, left: -10),
          // circulo 5
          Positioned(child: burbuja(), bottom: 120, right: 20),
        ],
      ),
    );
  }

  Container burbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
