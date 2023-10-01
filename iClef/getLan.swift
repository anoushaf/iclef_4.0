//
//  getLan.swift
//  iClef
//
//  Created by Anousha Farshid on 9/17/23.
//
import CoreGraphics
import Foundation
import PhotosUI
var l = 1
var t = 10
var scg = 0
var scb = 0
var sc1 = 0
var s = 0
var st = 0
var avg = 0
var v:CGFloat = 0

var dataPoints:[CGFloat] = [v, v, v, v, v]
var timepoint:[CGFloat] = [v, v, v, v, v]

public func getLan() -> Int {
    return l
}
public func setLan(key: Int){
     l = key
}
public func getTime() -> Int {
    return t
}
public func setTime(key: Int){
     t = key
}
public func getAvg() -> Int {
    return avg
}
public func setAvg(key: Int){
     avg = key
    for n in 0...4 {
        if timepoint[n] == 0{
            timepoint[n] = CGFloat(key) * 20
            st = 1
        }
    }
    if st == 0{
        timepoint[0] = timepoint[1]
        timepoint[1] = timepoint[2]
        timepoint[2] = timepoint[3]
        timepoint[3] = timepoint[4]
        timepoint[4] = CGFloat(key) * 20
    }
    st = 0
}

public func getScore() -> Int {
    return scg
}
public func setScore(key: Int){
    if key > scg {
        scg = key
    }
    for n in 0...4 {
        if dataPoints[n] == 0{
            dataPoints[n] = CGFloat(key) * 20
            s = 1
        }
    }
    if s == 0{
        dataPoints[0] = dataPoints[1]
        dataPoints[1] = dataPoints[2]
        dataPoints[2] = dataPoints[3]
        dataPoints[3] = dataPoints[4]
        dataPoints[4] = CGFloat(key) * 20
    }
    s = 0
}
public func getData() -> [CGFloat] {
    return dataPoints
}

public func getTimepoint() -> [CGFloat] {
    return timepoint
}

