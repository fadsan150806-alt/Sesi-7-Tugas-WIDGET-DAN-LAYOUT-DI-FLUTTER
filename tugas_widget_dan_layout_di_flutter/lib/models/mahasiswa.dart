class Mahasiswa {
  final String nama;
  final String nim;
  final String programStudi;
  final String universitas;
  final String hobi;
  final String infoTambahan;
  final String fotoAsset;

  const Mahasiswa({
    required this.nama,
    required this.nim,
    required this.programStudi,
    required this.universitas,
    required this.hobi,
    required this.infoTambahan,
    required this.fotoAsset,
  });
}

const dataMahasiswa = Mahasiswa(
  nama: 'Fadli Hasan',
  nim: '2495114035',
  programStudi: 'S1 Teknik Informatika',
  universitas: "Universitas Hasyim Asy'ari",
  hobi: 'hobi saya main game,dan nonton film.',
  infoTambahan: 'untuk sekarang saya sedang mengikuti ukm media dan saya di tugas biasanya di tugaskan untuk menyiapkan live streaming.',
  fotoAsset: 'assets/images/foto_profil.jpeg',
);