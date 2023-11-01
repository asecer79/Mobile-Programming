void main(List<String> args) {
  isYaptir(Insan());
  isYaptir(Canli());
  isYaptir(Balik());
  isYaptir(Kus());

  communicate(SmsService());
  communicate(EmailService());
}

void communicate(MessageService messenger) {
  //.....
  messenger.SendMessage();
}

void isYaptir(Canli c) {
  c.hareketEt();
}

class Canli {
  void hareketEt() {
    print("Canli hareket etti");
  }
}

class Kus extends Canli {
  @override
  void hareketEt() {
    print("Kuş uçmaya başladı");
  }
}

class Balik extends Canli {
  @override
  void hareketEt() {
    print("Balık yüzmeye başladı");
  }
}

class Insan extends Canli {
  @override
  void hareketEt() {
    print("Insan yürümeye başladı");
  }
}

abstract class MessageService {
  void SendMessage();
  void ReadMessage();
}

class SmsService implements MessageService {
  @override
  void ReadMessage() {
    print("Sms message read!");
  }

  @override
  void SendMessage() {
    print("Sms message sent!");
  }
}

class EmailService implements MessageService {
  @override
  void ReadMessage() {
    print("Email message read!");
  }

  @override
  void SendMessage() {
    print("Email message sent!");
  }
}
