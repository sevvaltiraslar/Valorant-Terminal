//
//  main.swift
//  leagueOfLegends
//
//  Created by SEVVAL on 22.09.2022.
//

import Foundation

enum Gun {
    case vandal
    case phantom
    case guardian
    case bulldog
    case spectre
    case judge
    case classic
    case shorty
    case frenzy
    case ghost
    case sheriff
    case stinger
    case bucky
    case marshall
    case awp
    case ares
    case odin
}

struct Gamer {
    let charName: String
    let charProperty: String
}

var firstGamer = Gamer(charName: "Reyna", charProperty: "Entry")
var secondGamer = Gamer(charName: "Omen", charProperty: "Smoke")
var thirdGamer = Gamer(charName: "Sova", charProperty: "Observer")
var fourthGamer = Gamer(charName: "Chamber", charProperty: "Sentinel")
var fifthGamer = Gamer(charName: "Sage", charProperty: "Healer")

// MARK: Listeleme Sayfasındaki Print İşlemleri

func printOffer() {
    print("Giriş İşleminiz Başarı İle Gerçekleşmiştir.")
    print("*******************************************")
    print("Öneriler Sayfasına Hoş Geldiniz!")
    print("********************************")
    print("Size Önerdiğimiz Silahlar:")
}

// MARK: Silah Özellikleri ve Bakiye Bilgisi

func printDamage(hs: Int, bs: Int, ls: Int, amount: Int) {
    print("Silah Özellikleri")
    print("Verilecek Kafa Hasarı:\(hs)")
    print("Verilecek Vücut Hasarı:\(bs)")
    print("Verilecek Bacak Hasarı:\(ls)")
    print("Silah Fiyatı:\(amount)Gold")
    print("Lütfen Bakiye Bilginizi Giriniz:")
}

// MARK: Bakiye Kontrolü

func price(amount: Int) {
    if let balance = readLine() {
        if Int(balance) != nil {
            if amount <= Int(balance)! {
                print("Satın Alma İşlemi Gerçekleştirildi!")
            } else {
                print("Yetersiz Bakiye Lütfen Başka Bir Silah Seçin!")
            }
        }
    }
}

// MARK: Seçilen Silah ile Inputun Kontrolü

func gun(gunName: String) {
    if gunName == "vandal" {
        printDamage(hs: 160, bs: 40, ls: 34, amount: 2900)
        price(amount: 2900)
    } else if gunName == "phantom" {
        printDamage(hs: 140, bs: 39, ls: 33, amount: 2900)
        price(amount: 2900)
    } else if gunName == "guardian" {
        printDamage(hs: 195, bs: 65, ls: 49, amount: 2250)
        price(amount: 2250)
    } else if gunName == "bulldog" {
        printDamage(hs: 116, bs: 35, ls: 30, amount: 2050)
        price(amount: 2050)
    } else if gunName == "spectre" {
        printDamage(hs: 78, bs: 26, ls: 22, amount: 1600)
        price(amount: 1600)
    } else if gunName == "judge" {
        printDamage(hs: 34, bs: 17, ls: 14, amount: 1850)
        price(amount: 1850)
    } else if gunName == "classic" {
        printDamage(hs: 78, bs: 26, ls: 22, amount: 0)
        price(amount: 0)
    } else if gunName == "shorty" {
        printDamage(hs: 36, bs: 12, ls: 10, amount: 200)
        price(amount: 200)
    } else if gunName == "frenzy" {
        printDamage(hs: 78, bs: 26, ls: 22, amount: 450)
        price(amount: 450)
    } else if gunName == "ghost" {
        printDamage(hs: 105, bs: 30, ls: 26, amount: 500)
        price(amount: 500)
    } else if gunName == "sheriff" {
        printDamage(hs: 159, bs: 55, ls: 47, amount: 800)
        price(amount: 800)
    } else if gunName == "stinger" {
        printDamage(hs: 67, bs: 25, ls: 23, amount: 950)
        price(amount: 950)
    } else if gunName == "bucky" {
        printDamage(hs: 44, bs: 22, ls: 19, amount: 950)
        price(amount: 950)
    } else if gunName == "marshall" {
        printDamage(hs: 202, bs: 101, ls: 85, amount: 950)
        price(amount: 950)
    } else if gunName == "awp" {
        printDamage(hs: 255, bs: 150, ls: 120, amount: 4700)
        price(amount: 4700)
    } else if gunName == "ares" {
        printDamage(hs: 75, bs: 30, ls: 25, amount: 1600)
        price(amount: 1600)
    } else if gunName == "odin" {
        printDamage(hs: 95, bs: 38, ls: 32, amount: 3200)
        price(amount: 3200)
    } else {
        print("Lütfen Ürün Adını Doğru Giriniz!")
    }
}

func buyItem() {
    print("Satın Almak İstediğiniz Ürünün Adını Giriniz:")
    let buyItem = readLine()
    print("Satın Alma Ekranına Hoş Geldiniz")
    print("********************************")
    gun(gunName: buyItem!)
}

// MARK: Kullanıcı Giriş Bilgileri, Girilen Bilgilerin Kontrolü

print("Hoş Geldiniz!")
print("*************")
print("Lütfen Karakter Bilgilerinizi Giriniz")
print("*************************************")
print("Karakter İsmi:")
var charName = readLine()
print("Lütfen Karakterin Özelliğini Giriniz:")
var charPropertyName = readLine()

if charName == "Reyna" && charPropertyName == "Entry" {
    printOffer()
    print("\(Gun.vandal)\n\(Gun.phantom)\n\(Gun.guardian)\n\(Gun.ghost)")
    buyItem()
} else if charName == "Omen" && charPropertyName == "Smoke" {
    print("\(Gun.guardian)\n\(Gun.ghost)\n\(Gun.bucky)\n\(Gun.bulldog)")
    buyItem()
} else if charName == "Sova" && charPropertyName == "Observer" {
    print("\(Gun.phantom)\n\(Gun.awp)\n\(Gun.odin)\n\(Gun.ares)")
    buyItem()
} else if charName == "Chamber" && charPropertyName == "Sentinel" {
    print("\(Gun.sheriff)\n\(Gun.judge)\n\(Gun.marshall)\n\(Gun.awp)")
    buyItem()
} else if charName == "Sage" && charPropertyName == "Healer" {
    print("\(Gun.vandal)\n\(Gun.stinger)\n\(Gun.classic)\n\(Gun.judge)")
    buyItem()
} else {
    print("Lütfen Doğru Özellik Bilgileri Giriniz! Büyük-Küçük Harfe Dikkat Ediniz!")
}

