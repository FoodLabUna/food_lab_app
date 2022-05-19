import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_lab/app/modules/home/home_controller.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:carousel_slider/carousel_slider.dart';

final controller = HomeController();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final imagesurl = [
    'assets/images/peixe-1.jpeg',
    'assets/images/peixe-2.jpg',
    'assets/images/peixe-3.jpeg',
    'assets/images/peixe-4.jpg',
  ];

  final dicas = [
    'A pele deve estar brilhante e seu muco – se houver – deve ser translúcido',
    'A carne do peixe (caso opte por comprar filets) deve estar bem firme e elástica',
    'Peixes inteiros devem ter olhos salientes e bem brilhantes',
    'As escamas do peixe devem sempre estar bem aderidas à pele',
    'As brânquias são sempre avermelhadas, com tons de rosa ou vinho escuro',
    'O odor do peixe deve ser característico, porém suave, sem ser desagradável.'
  ];

  final menuList = [
    {
      'icon': Icons.new_releases_rounded,
      'title': 'Novidades',
    },
    {
      'icon': Icons.auto_awesome_mosaic_rounded,
      'title': 'Artigos',
    },
    {
      'icon': Icons.settings,
      'title': 'Opções',
    },
    {
      'icon': Icons.chat_bubble,
      'title': 'Perguntas',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
        builder: (_) {
          return Scaffold(
            body: Center(
                child: controller.imageFile == null ||
                        controller.imageFile!.path == ''
                    ? SingleChildScrollView(
                        child: SafeArea(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // top screen
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mais Pesquisados',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CarouselSlider.builder(
                                options: CarouselOptions(
                                  height: 170,
                                  autoPlay: true,
                                  enlargeCenterPage: true,
                                  autoPlayInterval: const Duration(
                                    seconds: 7,
                                  ),
                                  autoPlayAnimationDuration: const Duration(
                                    seconds: 1,
                                  ),
                                ),
                                itemCount: imagesurl.length,
                                itemBuilder: (_, index, realIndex) {
                                  return InkWell(
                                    onTap: () {
                                      {}
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(imagesurl[index]),
                                        ),
                                        borderRadius: BorderRadius.circular(25),
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0x00121212),
                                            Color(0xff121212),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // Featured Section
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  menuList.length,
                                  (index) => MenuBtns(
                                    title: '${menuList[index]['title']}',
                                    icon: menuList[index]['icon'] as IconData,
                                  ),
                                ),
                              ),
                              // Releases
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Text(
                                  'Dicas',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CarouselSlider.builder(
                                options: CarouselOptions(
                                  height: 170,
                                  autoPlay: true,
                                  enlargeCenterPage: true,
                                  autoPlayInterval: const Duration(
                                    seconds: 7,
                                  ),
                                  autoPlayAnimationDuration: const Duration(
                                    seconds: 1,
                                  ),
                                ),
                                itemCount: dicas.length,
                                itemBuilder: (_, index, realIndex) {
                                  return InkWell(
                                    onTap: () {
                                      {}
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 25, right: 25),
                                      child: Center(
                                        child: Text(dicas[index],
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFFFFFFFF))),
                                      ),
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xFFf28705),
                                            Color(0xFFf28705),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            margin: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0))),
                                  child: InkWell(
                                    onTap: () => {},
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .stretch, // add this
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8.0),
                                            topRight: Radius.circular(8.0),
                                          ),
                                          child:
                                              Image.file(controller.imageFile!,
                                                  // width: 300,
                                                  height: 200,
                                                  fit: BoxFit.fill),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Visibility(
                                            visible: controller.loading,
                                            child: LinearProgressIndicator(
                                              backgroundColor:
                                                  Color(0xFFFFFFFF),
                                              color: Color(0xFFf28705),
                                            )),
                                        ButtonBar(
                                          alignment: MainAxisAlignment.start,
                                          children: [
                                            TextButton(
                                                style: ButtonStyle(
                                                    foregroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Colors.green),
                                                    shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    18.0),
                                                            side: BorderSide(
                                                                color: Colors.green)))),
                                                onPressed: () {
                                                  controller.uploadfile(
                                                      controller.imageFile!);
                                                },
                                                child: const Text('Processar')),
                                            TextButton(
                                                style: ButtonStyle(
                                                    foregroundColor:
                                                        MaterialStateProperty.all<
                                                            Color>(Colors.red),
                                                    shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    18.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .red)))),
                                                onPressed: () {
                                                  controller.clearImage();
                                                },
                                                child: const Text('Cancelar')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Visibility(
                                  child: Card(
                                    elevation: 5,
                                    child: ListTile(
                                      leading: Icon(Icons.filter_alt_outlined),
                                      title: Text('Tipo : ' + controller.type),
                                      subtitle: Text(
                                          'Acurácia : ' + controller.acc + '%'),
                                      trailing: Icon(Icons.check),
                                    ),
                                  ),
                                  visible: controller.showResult,
                                )
                              ],
                            ),
                          ),
                        ],
                      ))),
            floatingActionButton: Visibility(
                visible: true,
                child: SpeedDial(
                  animatedIcon: AnimatedIcons.menu_close,
                  animatedIconTheme: IconThemeData(size: 22),
                  backgroundColor: Color(0xFFf28705),
                  visible: true,
                  curve: Curves.bounceIn,
                  children: [
                    // FAB 1
                    SpeedDialChild(
                        child: Icon(Icons.add_a_photo),
                        backgroundColor: Color(0xFFf28705),
                        onTap: () {
                          controller.getFromCamera();
                        },
                        label: 'Câmera',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16.0),
                        labelBackgroundColor: Color(0xFFf28705)),
                    // FAB 2
                    SpeedDialChild(
                        child: Icon(Icons.add_photo_alternate),
                        backgroundColor: Color(0xFFf28705),
                        onTap: () {
                          controller.getFromGallery();
                        },
                        label: 'Galeria',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16.0),
                        labelBackgroundColor: Color(0xFFf28705))
                  ],
                )),
          );
        },
      ),
    );
  }
}

class MenuBtns extends StatelessWidget {
  const MenuBtns({
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFf28705), Color(0xFFf28705)],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
