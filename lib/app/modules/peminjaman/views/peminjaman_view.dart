import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petugas_perpustakaan_kelas_b/app/routes/app_pages.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeminjamanView'),
        centerTitle: true,
      ),
    floatingActionButton: FloatingActionButton(onPressed: ()=> Get.toNamed(Routes.PEMINJAMAN),
      child: Icon(Icons.add),
    ),
      body: controller.obx((state) => ListView.separated(
        itemCount: state!.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text("Judul Buku ${state[index].book?.judul}"),
            subtitle: Text("Tanggal Pinjam ${state[index].tanggalPinjam}"),
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
      ))
    );
  }
}
