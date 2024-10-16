class Hewan {
  double berat; 

  Hewan(this.berat); 
}

class Mobil {
  double kapasitas; 
  List<Hewan> muatan = []; 

  Mobil(this.kapasitas); 

  void tambahMuatan(Hewan hewan) {
    double totalMuatan = hitungTotalMuatan();
    if (totalMuatan + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print("Hewan berhasil ditambahkan.");
    } else {
      print("Kapasitas tidak mencukupi.");
    }
  }

  double hitungTotalMuatan() {
    return muatan.fold(0, (total, hewan) => total + hewan.berat);
  }
}

void main() {
  Mobil mobil = Mobil(1000.0); 
  Hewan sapi = Hewan(300.0);   
  Hewan kambing = Hewan(50.0); 

  mobil.tambahMuatan(sapi);   
  mobil.tambahMuatan(kambing); 

  print("Total muatan: ${mobil.hitungTotalMuatan()} kg");
}
