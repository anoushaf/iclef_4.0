//
//  bView.swift
//  iClef
//
//  Created by Anousha Farshid on 9/17/23.
//

import SwiftUI
import AVFoundation


struct bView: View {
    @State private var cardNum = 3
    @State private var result = -1
    @State private var score = 0
    @State private var counter = 0
    @State private var played = 0
    @State private var octave = 2
    @State private var index = 3
    @State var go = 1
    @State var t = 0
    @State var timeSpent = 0
    @State private var showModal = false
    
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var l = getLan()
    let answers = ["C", "D", "E", "F", "G", "A", "B",]
    @State var timeRemaining = getTime()
    var body: some View {
        ZStack{
            Image("background2").resizable().ignoresSafeArea(.all)
            VStack(alignment: .center){
                HStack(){
                    if(getTime() > 0){
                        Text("0:\(self.t)").foregroundColor(.black).font(.system(size: 34, design: .rounded))            .padding(.leading, 20.0).onReceive(timer){ _ in
                            if self.t < getTime() && self.go==1{
                                self.t = self.t + 1
                            }
                        }
                    }
                    Spacer()
                    
                    if(self.result == 2 || (self.t >= getTime() && getTime() > -1)){
                        Text(answers[self.index]).foregroundColor(Color(red:0.5, green: 0, blue: 0)).font(.system(size: 45, design: .rounded ))
                    }
                    else if(self.result == 1){
                        
                        Text(answers[self.index]).foregroundColor((Color(red: 0, green: 0.5, blue: 0))).font(.system(size: 45, design: .rounded ))
                    }
                    else if(self.result == -1){
                        Text("      ").foregroundColor(.red).font(.system(size: 45, design: .rounded ))
                    }
                    Spacer()
                    
                    Button(action: {
                        self.showModal = true
                    }) {
                        Image("setting").resizable().frame(width: 30, height: 30).padding(.trailing, 20)
                    }.sheet(isPresented: self.$showModal) {
                        setView()
                    }
                }.frame(alignment: .top)
                
                Image("bass" + String(self.cardNum)).resizable().aspectRatio(contentMode: .fit)
                //Spacer()
                
                HStack{
                    Spacer()
                    Button(action: {
                        if(self.result == -1){
                            if (self.cardNum == 2 || self.cardNum == 9 || self.cardNum == 16){
                                self.score += 1
                                self.result = 1
                                setScore(key: self.score)
                            }
                            else{
                                self.result = 2
                            }
                            self.counter += 1
                            self.played = 1
                            
                        }
                        //playSound(key: "a" + String(self.octave))
                        self.go = 0
                    })
                    {if(getLan()==1){
                        Text("A").foregroundColor(.black).font(.system(size: 34, design: .rounded ))
                    }
                        else{Text("La").foregroundColor(.black).font(.system(size: 28, design: .rounded ))
                        }
                        Spacer()
                    }
                    .padding(.leading, 15.0)
                    
                    Button(action: {
                        if(self.result == -1){
                            if (self.cardNum == 1 || self.cardNum == 8 || self.cardNum == 15 ){
                                self.score += 1
                                self.result = 1
                                setScore(key: self.score)
                            }
                            else{
                                self.result = 2
                            }
                            self.counter += 1
                            self.played = 1
                            
                        }
                        //playSound(key: "b" + String(self.octave))
                        self.go = 0
                    })
                    {if(getLan()==1){
                        Text("B").foregroundColor(.black).font(.system(size: 34, design: .rounded ))
                    }
                        else{Text(" Si").foregroundColor(.black).font(.system(size: 28, design: .rounded ))
                        }
                        Spacer()
                    }.padding(.leading, 15.0)
                    
                    Button(action: {
                        if(self.result == -1){
                            if (self.cardNum == 0 || self.cardNum == 7 || self.cardNum == 14){
                                self.score += 1
                                self.result = 1
                                setScore(key: self.score)
                            }
                            else{
                                self.result = 2
                            }
                            self.counter += 1
                            self.played = 1
                        }
                       // playSound(key: "c" + String(self.octave))
                        self.go = 0
                    })
                    {if(getLan()==1){
                        Text("C").foregroundColor(.black).font(.system(size: 34, design: .rounded ))
                    }
                        else{Text("Do").foregroundColor(.black).font(.system(size: 28, design: .rounded ))
                        }
                        Spacer()
                    }.padding(.leading, 15.0)
                    
                    Button(action: {
                        if(self.result == -1){
                            if (self.cardNum == 1 || self.cardNum == 8 || self.cardNum == 15 ){
                                self.score += 1
                                self.result = 1
                                setScore(key: self.score)
                            }
                            else{
                                self.result = 2
                            }
                            self.counter += 1
                            self.played = 1
                        }
                        //playSound(key: "d" + String(self.octave))
                        self.go = 0
                    })
                    {if(getLan()==1){
                        Text("D").foregroundColor(.black).font(.system(size: 34, design: .rounded ))
                    }
                        else{Text("Re").foregroundColor(.black).font(.system(size: 28, design: .rounded ))
                        }
                        Spacer()
                    }.padding(.leading, 15.0)
                    
                    Button(action: {
                        if(self.result == -1){
                            if (self.cardNum == 2 || self.cardNum == 9 || self.cardNum == 16 ){
                                self.score += 1
                                self.result = 1
                                setScore(key: self.score)
                            }
                            else{
                                self.result = 2
                            }
                            self.counter += 1
                            self.played = 1
                        }
                        //playSound(key: "e" + String(self.octave))
                        self.go = 0
                    })
                    {if(getLan()==1){
                        Text("E").foregroundColor(.black).font(.system(size: 34, design: .rounded ))
                    }
                        else{Text("Mi").foregroundColor(.black).font(.system(size: 28, design: .rounded ))
                        }
                        Spacer()
                    }.padding(.leading, 15.0)
                    Button(action: {
                        if(self.result == -1){
                            if (self.cardNum == 3 || self.cardNum == 10 ){
                                self.score += 1
                                self.result = 1
                                setScore(key: self.score)
                            }
                            else{
                                self.result = 2
                            }
                            self.counter += 1
                            self.played = 1
                        }
                        //playSound(key: "f" + String(self.octave))
                        self.go = 0
                    })
                    {if(getLan()==1){
                        Text("F").foregroundColor(.black).font(.system(size: 34, design: .rounded ))
                    }
                        else{Text("Fa").foregroundColor(.black).font(.system(size: 28, design: .rounded ))
                        }
                        Spacer()
                    }.padding(.leading, 15.0)
                    Button(action: {
                        if(self.result == -1){
                            if (self.cardNum == 4 || self.cardNum == 11 ){
                                self.score += 1
                                self.result = 1
                                setScore(key: self.score)
                            }
                            else{
                                self.result = 2
                            }
                            self.counter += 1
                            self.played = 1
                        }
                        //playSound(key: "g" + String(self.octave))
                        self.go = 0
                    })
                    {if(getLan()==1){
                        Text("G").foregroundColor(.black).font(.system(size: 34, design: .rounded ))
                    }
                        else{Text("Sol").foregroundColor(.black).font(.system(size: 25, design: .rounded ))
                        }
                    }.padding(.leading, 15.0)
                    .padding(.trailing, 15.0)
                } .padding(.vertical, 30.0)
                Spacer()
                HStack{
                    Text("Score: " + String(score) + "/" + String(counter)).font(.system(size: 25, design: .rounded )).foregroundColor(.black).padding(.leading, 35.0)
                    Spacer()
                    Button(action: {
                        self.cardNum =
                        Int.random(in: 0...16)
                        
                        if(self.cardNum < 2){
                            self.octave = 2
                        }
                        else if(self.cardNum >= 2 && self.cardNum < 9){
                            self.octave = 3
                        }
                        else if(self.cardNum >= 9 && self.cardNum < 16){
                            self.octave = 4
                        }
                        else if(self.cardNum < 16){
                            self.octave = 5
                        }
                        self.result = -1
                        if(self.played == 0){
                            self.counter += 1
                        }
                        self.played = 0
                        self.index = (self.cardNum % 7)
                        self.timeSpent = self.timeSpent + self.t
                        self.t = 0
                        self.go = 1
                        setScore(key: self.score)
                        if(self.counter == 0){
                            self.counter = 1
                        }
                    })
                    {Text("Next").font(.system(size: 25, design: .rounded ))
                    }.padding(.trailing, 35.0)
                    
                }.aspectRatio(contentMode: .fit)
                Spacer()
            }.aspectRatio(contentMode: .fit)
        }
    }

}

struct bView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            bView()
                
        }
    }
}
