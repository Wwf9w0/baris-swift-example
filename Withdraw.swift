//
//  Withdraw.swift
//  Test 4
//
//  Created by Bariscan Inan on 24.08.23.
//

class Withdraw {
    // para cekme fonksiyonu yazilacak.
    func withDraw(amount: Int, balance: Int) -> Int {
        if amount > balance {
            fatalError("Cekilecek tutar bakiyeden büyük olamaz!")
        }
        return balance - amount
    }
}
