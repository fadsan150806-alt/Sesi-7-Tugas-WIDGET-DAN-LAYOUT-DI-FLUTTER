import 'package:flutter/material.dart';

import '../models/mahasiswa.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    const m = dataMahasiswa;

    final items = <_DetailItem>[
      _DetailItem(Icons.person, 'Nama', m.nama),
      _DetailItem(Icons.badge, 'NIM', m.nim),
      _DetailItem(Icons.school, 'Program Studi', m.programStudi),
      _DetailItem(
        Icons.account_balance,
        'Universitas',
        m.universitas,
      ),
      _DetailItem(Icons.favorite, 'Hobi / Deskripsi', m.hobi),
      _DetailItem(
        Icons.info,
        'Informasi Tambahan',
        m.infoTambahan,
      ),
    ];

    return Scaffold(
      // Warna latar belakang mengikuti halaman profil
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text('Detail Mahasiswa'),
        centerTitle: true,

        // Warna AppBar disamakan dengan tema profil
        backgroundColor: Colors.indigo.shade600,
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      // Struktur awal tetap menggunakan ListView.builder
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            color: Colors.white,
            elevation: 2,
            shadowColor: Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  item.icon,
                  color: Colors.indigo.shade600,
                ),
              ),
              title: Text(
                item.title,
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                item.value,
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _DetailItem {
  final IconData icon;
  final String title;
  final String value;

  const _DetailItem(this.icon, this.title, this.value);
}
