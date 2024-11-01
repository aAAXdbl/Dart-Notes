void main() {

  //If,Else,Else if Koşullu İfadeleri

  String username = "GhoST";
  int password = 145367;

  if (password == 145367) {
    print("Username: "+username+" Login Successful!");
  } else {
    print("Username: "+username+" Login Failed!");
  }

  //Basit Banka Örneği
  //Müşterinin Parası 10TL,Banka ücreti 5TL,
  //Kalan Parası 10TL'den yüksek ise bankaya para yatıracak düşük ise bankadan çıkacak.

  int customerMoney = 50;
  const bankCost = 5;
  if(customerMoney > bankCost) {
    print("Bankamıza Hoşgeldiniz!");
    customerMoney -= 5; //Banka giriş ücreti kesilir.

    if(customerMoney > 10) {
      print("Para Yatırma işleminiz başarıyla gerçekleşti. iyi günler dileriz!");
    } else {
      print("Yetersiz Bakiye! Para Yatırma işlemi gerçekleşemiyor.");
    }
  }else {
    print("Bankaya Giriş yapacak miktarı ödemediniz. giriş yapılamaz!");
  }

  print("-----------------------------------------------------------------------------------");
    
  //Switch-Case
  int haftanin_gunleri = 5;

  switch(haftanin_gunleri) {
    case 1:
      print("Pazartesi");
      break;
    case 2:
      print("Salı");
      break;
    case 3:
      print("Çarşamba");
      break;
    case 4:
      print("Perşembe");
      break;
    case 5:
      print("Cuma");
      break;
    case 6:
      print("Cumartesi");
      break;
    case 7:
      print("Pazar");
      break;
    default:
      print("1-7 arası diğer değerler okunmaz.");
  }

  //Değer Mart Ayı ise Doğum Günüm Yaklaşıyor yazan koşul 
  String ay = "Mart";
  switch(ay) {
    case "Ocak":
      print("Doğum Günüme Daha Var.");
      break;
    case "Şubat":
      print("Doğum Günüme Daha Var.");
      break;
    case "Mart":
      print("Doğum Günüm Yaklaşıyor!");
      break;
    case "Nisan":
      print("Doğum Günüme Daha Var.");
      break;
    case "Mayıs":
      print("Doğum Günüme Daha Var.");
      break;
    case "Haziran":
      print("Doğum Günüme Daha Var.");
      break;
    case "Temmuz":
      print("Doğum Günüme Daha Var.");
      break;
    case "Ağustos":
      print("Doğum Günüme Daha Var.");
      break;
    case "Eylül":
      print("Doğum Günüme Daha Var.");
      break;
    case "Ekim":
      print("Doğum Günüme Daha Var.");
      break;
    case "Kasım":
      print("Doğum Günüme Daha Var.");
      break;
      case "Aralık":
        print("Doğum Günüme Daha Var.");
        break;
      default:
        print("Hata!");
  }
}
