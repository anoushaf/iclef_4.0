//
//  getOctave.swift
//  iClef
//
//  Created by Anousha Farshid on 9/17/23.
//

import Foundation

func getOctave(cardNum: Int) -> Int{
    var octave = 0
    if(cardNum < 2){
        octave = 2
    }
    else if(cardNum >= 2 && cardNum < 9){
        octave = 3
    }
    else if(cardNum >= 9 && cardNum < 16){
        octave = 4
    }
    return octave
}
