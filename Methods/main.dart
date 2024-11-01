void main() {

  String calisan1 = "Junior";
  int calisan1Maas = calisanMaasHesaplama(calisan1);
  double calisan1DolarMaas = dolarBazliMaas(calisan1Maas, dolarKurFiyati: 13);
  double calisan1EuroMaas = euroBazliMaas(maas: calisan1Maas);
  print("Junior Türk Lirası ile Maaş: $calisan1Maas");
  print("Junior Dolar ile Maaş: $calisan1DolarMaas");
  print("Junior Euro ile Maaş: $calisan1EuroMaas");
  
  print("-----------------------------------------------------------------------------------");

  String calisan2 = "Mid";
  int calisan2Maas = calisanMaasHesaplama(calisan2);
  double calisan2DolarMaas = dolarBazliMaas(calisan2Maas);
  double calisan2EuroMaas = euroBazliMaas(maas: calisan2Maas);
  print("Mid Türk Lirası ile Maaş: $calisan2Maas");
  print("Mid Dolar ile Maaş: $calisan2DolarMaas");
  print("Mid Euro ile Maaş: $calisan2EuroMaas");

  print("-----------------------------------------------------------------------------------");

  String calisan3 = "Senior";
  int calisan3Maas = calisanMaasHesaplama(calisan3);
  double calisan3DolarMaas = dolarBazliMaas(calisan3Maas);
  double calisan3EuroMaas = euroBazliMaas(maas: calisan3Maas);
  print("Senior Türk Lirası ile Maaş: $calisan3Maas");
  print("Senior Dolar ile Maaş: $calisan3DolarMaas");
  print("Senior Euro ile Maaş: $calisan3EuroMaas");
}

int calisanMaasHesaplama(String calisanPozisyonu) {

  if(calisanPozisyonu=="Junior") {
    return 18000;
  }else if(calisanPozisyonu=="Mid") {
    return 22000;
  }else if(calisanPozisyonu=="Senior") {
    return 28000; 
  }else {
    return 0;
  }
}

double dolarBazliMaas(int maas, {int dolarKurFiyati=27}) { //Süslü parantez varsayılan olarak atama yapmamızı sağlar.
  double dollarMaas = maas / dolarKurFiyati;
  return dollarMaas;
}
double euroBazliMaas({required int maas, int euroKurFiyati=29}) { //required parametreye değer verilmesini zorunlu kılar.
  double euroMaas = maas/euroKurFiyati;
  return euroMaas;
}