import 'package:flutter/material.dart';

import 'drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
              height: 250,
              color: Color(0xFF1A8474),
              padding: const EdgeInsets.only(
                top: 40,
                left: 0.0,
              ),
              //alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle, 
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0, 
                          color: Color.fromARGB(100, 0, 0, 0), 
                          spreadRadius: 5,
                          offset: Offset(4.8, 4.8),
                        )
                      ]
                    ),
                    child: CircleAvatar(
                        radius: (75),
                        backgroundColor: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.network(
                            'https://media-exp1.licdn.com/dms/image/C4E03AQFilx6AuyC21g/profile-displayphoto-shrink_200_200/0?e=1608768000&v=beta&t=1Ml1vbPq6tgtndGlOxVxpBIAhH4bjFrJyIF1MC9Mnns',
                            height: 170,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Olá, Cayo!",
                    style: TextStyle(
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(4.8, 4.8),
                          blurRadius: 4.0,
                          color: Color.fromARGB(100, 0, 0, 0),
                        ),
                      ],
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerTile(
              iconData: Icons.person_outline,
              title: 'PERFIL',
              pageNumber: 0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: DrawerTile(
              iconData: Icons.folder_open,
              title: 'EXAMES',
              pageNumber: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: DrawerTile(
              iconData: Icons.qr_code_scanner_outlined,
              title: 'QR',
              pageNumber: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: DrawerTile(
              iconData: Icons.list_alt,
              title: 'CONSULTAS',
              pageNumber: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: DrawerTile(
              iconData: Icons.exit_to_app_rounded,
              title: 'LOGOUT',
              pageNumber: 4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 135.0, left: 75),
            child: Row(
              children: [
                Text(
                  'Saúde no bolso',
                  style: TextStyle(
                   color: Color(0xFF1A8474),
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
