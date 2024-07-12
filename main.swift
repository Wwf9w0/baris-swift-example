//
//  main.swift
//  Test 4
//
//  Created by Bariscan Inan on 08.08.23.
//

import Foundation
/* karesini alma olayi
print("Sayi giriniz")
if let input = readLine(){
    if let number = Int(input){
        let result = number * number
        print("\(result)")
    }
}
*/


/*
var array = [Int]()
print("Siralamak istediginiz sayiyi giriniz")
if let i1 = readLine(){
    if let i2 = readLine(){
        if let i3 = readLine(){
            if let n1 = Int(i1){
                if let n2 = Int(i2){
                    if let n3 = Int(i3){
                        array.append(n1)
                        array.append(n2)
                        array.append(n3)
                        print("array = \(array)")
                    }
                }
            }
        }
    }
}

var max = array[0]
for i in array{
    if i > max{
        max = i
    }
}
print("En büyük sayi \(max)")
*/


/*
 
print("Siralamak istediginiz sayiyi giriniz.")
if let input1 = readLine(){
    if let input2 = readLine(){
        if let input3 = readLine(){
            if let number1 = Int(input1){
                if let number2 = Int(input2){
                    if let number3 = Int(input3){
                        array.append(number1)
                        array.append(number2)
                        array.append(number3)
                    }
                }
            }
        }
    }
}
var set = Set<Int>()
var count = 0
for i in array{
// bos bir set, int deger alacak.
    
    if set.contains(i){
// count += 1 mean count = count + 1.
        count += 1
    } else{
// array append = set insert yani setin icine eleman ekledik. array = dizi, set = küme
        set.insert(i)
    }
}
print("count = \(count)")
*/

/*
func hello(human: String) -> String{
    var x = "Hello human" + human
    return x
}
print(hello(human: " Baris"))
*/

/*
var x : [String] = []
func hallo(person: String) -> String{
 return x
}
func hello(person: String, alreadyGreeted: Bool) -> String{
    if alreadyGreeted{
        return hallo(person: " Tekrar Hosgeldiniz.")
    }
    else{
        return "Ilk defa geldiginiz icin tesekkürler."
    }
}
print(hello(person: "Bedran", alreadyGreeted: true), hallo(person: "Bedran"))

var x : [Int] = []
print(x)
*/

/*
func sayan(abc: String) -> Int{
    print(abc)
    return abc.count
}
print(sayan(abc: "Baris"))

*/
/*
// nested system
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
// != 'e kadar
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")
// -4...
// -3...
// -2...
// -1...
// zero!

*/
/*
// while infinty loop etc.
var y = 0
var x = 7
while x>0{
    print("x>0")
    y += 1
    if y == 10{
        break
    }
}
 */




/*
// Bankamatik App

var balance = 0

func deposit(amount: Int) -> String {
    if amount <= 0 {
        return "Yatirilacak miktar sifirdan kücük veya sifir olamaz!"
    }
    
    balance += amount
    // "\" anlami degiskeni gösteriyor
    return "Para yatirma islemi basarli! - miktar: \(amount), bakiye: \(balance)"
}

func withDraw(amount: Int) -> String {
    if amount > balance {
        return "Cekilecek miktar toplam bakiyeden büyük olamaz!"
    }
    balance = balance - amount
    return " Para cekme islemi basarili! - miktar: \(amount), bakiye: \(balance)"
}

print("Isleminizi seciniz.")
print("1 - Para yatir.")
print("2 - Para cek.")
if let choose = readLine() {
    if let chooseToInt = Int(choose) {
        if chooseToInt == 1 {
            print("Yatirilacak tutari giriniz.")
            if let amount = readLine() {
                if let amountToInt = Int(amount) {
                    print(deposit(amount: amountToInt))
                    print("Baska bir islem yapmak istiyor musunuz?")
                    print(" E / H")
                    if let question = readLine() {
                        if question == "E" {
                            print("Para yatirmak icin 1'i, Para cekmek icin 2'yi seciniz.")
                            if let input = readLine() {
                                if let inputToInt = Int(input) {
                                    if inputToInt == 1 {
                                        print("Yatiracaginiz tutari giriniz.")
                                        if let tutar = readLine() {
                                            if let tutarToInt = Int(tutar) {
                                                print(deposit(amount: tutarToInt))
                                            }
                                        }
                                            
                                    } else {
                                        print("Cekmek istediginiz tutari giriniz")
                                        if let withDrawAmount = readLine() {
                                            if let withDrawAmountToInt = Int(withDrawAmount) {
                                                print(withDraw(amount: withDrawAmountToInt))
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            print("Görüsmek üzere.")
                        }
                    }
                }
            }
        } else {
            print("Cekmek istediginiz tutari giriniz")
            if let i = readLine() {
                if let iToInt = Int(i) {
                    print(withDraw(amount: iToInt))
                }
            }
        }
    }
}


// *Ödev* = not ortalamasi hesaplama
// bir vize bir final
// if let vize readline ve final. 2 alt alta readline, 2 alt alta Int
// vize notunun yüzde 40'i alinacak final notunun yüzde 60'i alinacak.
// bunlarirn ikisi toplanir.
// toplandiktan sonra not 40'tan kücükse F
// 40 ile 50 arasindaysa D
// 50 ile 65 arasindaysa C
// 65 ile 85 arasi B
// 85 ile 100 arasi A


*/
/*
if let vize = readLine(){
    if let vizeToInt = Int(vize){
        let yüzde = (vizeToInt * 40) / 100
        print(yüzde)
    }
}
*/


/*
var not = 0

var vize = 0

var final = 0

if let vize = readLine() {
    if let final = readLine() {
        if let vizeToInt = Int(vize) {
            let yüzde1 = (vizeToInt * 40) / 100
            if let finalToInt = Int(final) {
                let yüzde2 = (finalToInt * 60) / 100
                    not = yüzde1 + yüzde2
            }
        }
    }
}

if not >= 85 && not <= 100 {
    print("A")
}

if not >= 65 && not <= 85 {
    print("B")
}

if not  >= 50  && not <= 65 {
    print("C")
}

if not >= 40  && not <= 50 {
    print("D")
}

if not >= 0 && not <= 40 {
    print("FF")
}
*/

/*
var bölüm = 0
var carpim = 0
var toplam = 0

if let input = readLine() {
    if let inputToInt = Int(input) {
        bölüm = inputToInt / 10
        carpim = inputToInt * 10
        toplam = inputToInt + 10
        
    }
}

print("Toplam -> \(toplam)")
print("Carpim -> \(carpim)")
print("Bölüm -> \(bölüm)")
*/

/*

 
// Ucak Rez alistirmasi

var koltuk = 10

var yolcuIsmi = ""

var nereden = ""

var nereye = ""

var yolcuTipi = ""

var yolcuSayisi = 0

var biletFiyati = 1000


func biletFiyatHesaplama(yolcular: String) -> Int {
    if yolcular == "Ögrenci" {
        return biletFiyati * 50 / 100
    }
    return biletFiyati
}


print("Nereden?")
if let neredenInput = readLine() {
    print("Nereye?")
    if let nereyeInput = readLine() {
        print("Yolcu Tipi?")
        if let yolcuTipiInput = readLine() {
            print("Yolcu Ismi?")
            if let yolcuIsmiInput = readLine() {
                print("Yolcu Sayisi?")
                if let yolcuSayisiInput = readLine() {
                    if let yolcuSayisiInputToInt = Int(yolcuSayisiInput) {
                        yolcuIsmi = yolcuIsmiInput
                        nereden = neredenInput
                        nereye = nereyeInput
                        yolcuTipi = yolcuTipiInput
                        yolcuSayisi = yolcuSayisiInputToInt
                        var ödenecekTutar = biletFiyatHesaplama(yolcular: yolcuTipi)
                        print("Ödenecek Tutar -> \(ödenecekTutar)")
                    }
                }
            }
        }
    }
}

func rez(yolcu: Int) -> String {
    if yolcu > koltuk {
        return "Gecerli koltuk sayiyi giriniz. Kalan koltuk sayiyi -> \(koltuk)"
    }
    return "Bilet alim basarili!"
}
print(rez(yolcu: yolcuSayisi))

*/

/*
 
let result = Test().myFunc(number: 1)
print(result)
 
*/


 

var transactionType = ""
var balance = 0
 
print("Yapmak istediginiz islemi seciniz.")
print("1 - Para yatirma, 2 - Para cekme")
if let choose = readLine() {
    if let chooseToInt = Int(choose) {
        if chooseToInt == 1 {
            print("Lütfen yatirmak istediginiz tutari giriniz.")
            if let amount = readLine() {
                if let amountToInt = Int(amount) {
                    let result = Deposit().deposit(amount: amountToInt, balance: balance)
                    balance = result
                    print("Islem basarili yeni bakiye: \(result)")
                    print("Baska bir islem yapmak istiyor musunuz? E / H.")
                    if let newTransaction = readLine() {
                        transactionType = newTransaction
                        while transactionType == "E" {
                            print("Baska bir islem yapmak istiyor musunuz? E / H.")
                            if let input = readLine() {
                                transactionType = input
                            }
                            print("Yapmak istediginiz islemi seciniz.")
                            print("1 - Para yatirma, 2 - Para cekme")
                            if let newChoose = readLine() {
                                if let newChooseToInt = Int(newChoose) {
                                    if newChooseToInt == 1 {
                                        print("Lütfen yatirmak istediginiz tutari giriniz.")
                                        if let amount = readLine() {
                                            if let amountToInt = Int(amount) {
                                                let result = Deposit().deposit(amount: amountToInt, balance: balance)
                                                print("Islem basarili yeni bakiye: \(result)")
                                            }
                                        }
                                    } else {
                                        print("Lütfen cekmek istediniz tutari giriniz.")
                                        if let drawAmount = readLine() {
                                            if let drawAmountToInt = Int(drawAmount) {
                                                let withDrawResult = Withdraw().withDraw(amount: drawAmountToInt, balance: balance)
                                                print("Islem basarili yeni bakiye: \(withDrawResult)")
                                            }
                                        }
                                    }
                                }
                            }
                        }

                    }
                        
                    
                        } else {
                            print("Lütfen cekmek istediniz tutari giriniz.")
                            if let drawAmount = readLine() {
                                if let drawAmountToInt = Int(drawAmount) {
                                    let withDrawResult = Withdraw().withDraw(amount: drawAmountToInt, balance: balance)
                                    print("Islem basarili yeni bakiye: \(withDrawResult)")
                                }
                            }
                        }
                    }
                }
                
            }
        }

var degisken = ""
while degisken == "E" {
    print("Yapmak istediginiz islemi seciniz.")
    print("1 - Para yatirma, 2 - Para cekme")
    if let newChoose = readLine() {
        if let newChooseToInt = Int(newChoose) {
            if newChooseToInt == 1 {
                print("Lütfen yatirmak istediginiz tutari giriniz.")
                if let amount = readLine() {
                    if let amountToInt = Int(amount) {
                        let result = Deposit().deposit(amount: amountToInt, balance: balance)
                        print("Islem basarili yeni bakiye: \(result)")
                    }
                }
            } else {
                print("Lütfen cekmek istediniz tutari giriniz.")
                if let drawAmount = readLine() {
                    if let drawAmountToInt = Int(drawAmount) {
                        let withDrawResult = Withdraw().withDraw(amount: drawAmountToInt, balance: balance)
                        print("Islem basarili yeni bakiye: \(withDrawResult)")
                    }
                }
            }
        }
    }
}


/*
 
 
 
var balance = 0

func deposit(amount: Int) -> Int {
    return balance + amount
}

func withDraw(amount: Int) -> Int {
    return balance - amount
}

while true {
    print("Yapmak istediginiz islemi seciniz.")
    print("1- Para yatirma, 2- Para cekme.")
    if let choise = readLine(), let choiseToInt = Int(choise) {
        switch choiseToInt {
        case 1:
            print("Lütfen yatirmak istediginiz tutari giriniz.")
            if let depositAmount = readLine(), let depositAmountToInt = Int(depositAmount) {
                balance = deposit(amount: depositAmountToInt)
                print("Islem basarili. Yeni bakiye: \(balance)")
                
            }
        case 2:
            print("Lütfen cekmek istediginiz tutari giriniz.")
            if let withDrawAmount = readLine(), let withDrawAmountToInt = Int(withDrawAmount) {
                balance = withDraw(amount: withDrawAmountToInt)
                print("Islem basarili. Yeni bakiye: \(balance)")
            }
        default:
            print("Gecersiz islem.")
        }
        print("Bir islem daha yapmak istiyor musunuz? ( E / H)")
        if let countinueChoise = readLine(), countinueChoise.lowercased() != "e" {
            break
        }
    }
}

*/
// Palindromik kelime bulma
// önce bir readline
// eger normal ve ters okunusu ayni ise true palindromik
/*
func palindromik(input: String) -> Bool {
    let reversed = String(input.reversed())
    return reversed.lowercased() == input.lowercased()
}
if let pal = readLine() {
    
    print(palindromik(input: pal))
}
*/
// sifir ile 1000 arasinda random 1 sayi sonrasinda cikan sayinin rakamlari toplamini yaz

/*
 Yanlis olan
var sayi = 0

var toplam = 0

func random(number: Int) -> Int {
    let randomInt = Int.random(in: 1..<1000)
    print(randomInt)
    
    while sayi > 0 {
        print(sayi % 10)
        sayi = sayi/10
        
    }
    return toplam
}
*/
/*
let random = Int.random(in: 1..<1000)
// print("Random number : \(random)) asagidaki ile ayni anlama geliyor.
print("Random number : ", random)
var number = random
var digitSum = 0
// mod alma
while number > 0 {
    digitSum += number % 10
    number /= 10
}
print("Toplam: ", digitSum)
*/
/*
var count = 0

if let input = readLine(), let inputToInt = Int(input) {
    for i in 2...inputToInt {
        if inputToInt % i == 0 {
            count += 1
        }
    }
    if count == 1 {
        print("Asaldir.")
    } else {
        print("Asal degildir.")
    }
}
*/

 
/*
if let number  = readLine() {
    if let numberToInt = Int(number) {
        if let logNumber = readLine() {
            if let logNumberToInt = Int(logNumber) {
                print(log(sayi: numberToInt, log: logNumberToInt))
            }
        }
    }
}

func log(sayi: Int,log: Int) -> Int {
    var number = sayi
    var count = 0
    
    
    while number > 0 {
        if number % log == 1 {
            return count
        }
        number /= log
        count += 1
    }
    return count
}
*/


/**
 Bir fabrikada sabit maaşla çalışan işçiler aile durumlarına göre ek maaş almaktadırlr.
 Çocuk sayısı 1 ise maaşının %5’i kadar ,
 çocuk sayısı 2 ise %10’u 3 ve daha fazla ise %15’i kadar aile yardımı almaktadır.
 Buna göre kullanıcıdan işçinin maaşı ve çocuk sayısı istenerek gerekli hesaplamayı yapan algoritma ?
 */

/*


var ekMaas = 0

print("Lütfen maasinizi yaziniz.")

if let salary = readLine(), let salaryToInt = Int(salary) {
    print("Lütfen cocuk sayisini giriniz.")
    if let kid = readLine(), let kidToInt = Int(kid) {
        if kidToInt == 1 {
            ekMaas = salaryToInt * 5 / 100
        } else if kidToInt == 2 {
            ekMaas = salaryToInt * 10 / 100
        } else if kidToInt == 3 {
            ekMaas = salaryToInt * 15 / 100
        } else {
            ekMaas = salaryToInt * 50 / 100
        }
        print("Ek Maas: \(ekMaas) €")
    }
}

*/


