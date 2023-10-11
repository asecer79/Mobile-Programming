
void main(List<String> args) {

//Dart veri yapıları
//strongly typed dildir.
//dynamic tipleri de destekler.

//dynamic veri yapısına sahip diller
//js, python ...,

//strongly type
int a =5;
//a = "Ahmet"; //hata verir

dynamic c =1;
c="Ahmet";


//js dynamic
//b = 15;
//b = "Ahmet";


//Dart Veri yapısı

//1-Numbers types
//  int
//  double
//2-String types
//3-boolean types

//4-diğer objeler

int yas = 15;

double maas = 1500.56;

String ad ="Mustafa";

bool dogdudur = !true;


DateTime dogumGunu = DateTime(2000,12,12);

Object yas1 = 15;

yas1="";

Object file = "asdasd";

print(dogdudur);


//String Interpolasyon


print("1-Ad: "+ad +", Yaş: "+ yas.toString()+ ", DTarih: " + dogumGunu.toString());


print("2-Ad: $ad, Yaş: $yas, DTarih: ${dogumGunu}");


//var ile değişken tanımlama
var a1= 15;


var isim1 = "Ahmet";



  
}