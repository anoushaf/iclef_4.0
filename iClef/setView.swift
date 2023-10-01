//
//  setView.swift
//  iClef
//
//  Created by Anousha Farshid on 9/17/23.
//

import SwiftUI

struct setView: View {
    @State  var l: Int = getLan()
    @State  var d: Int = getTime()
    @State var checkState:Bool = false ;
    @State var checkState2:Bool = true ;
    @State var checkState3:Bool = false ;
    @State var checkState4:Bool = false ;
    @State var timer:Bool = false ;
    @State var timer5:Bool = false ;
    @State var timer10:Bool = true ;
    @State var timer15:Bool = false ;
    @State var timer20:Bool = false ;
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        NavigationView{
            ZStack{
                Image("background").resizable().ignoresSafeArea(.all)
                
                VStack{
                    Text("Timer:").foregroundColor(.black).font(.largeTitle)
                    
                    HStack{
                        Button(action:
                                {
                            self.timer5 = !self.timer5
                            self.timer15 = false
                            self.timer10 = false
                            self.timer20 = false
                            self.timer = false
                            self.d = 5
                            setTime(key: 5)
                        }) {
                            Text("5'").foregroundColor(.black).font(.largeTitle)
                            Rectangle().fill(self.d == 5 ? Color.green : Color.red).frame(width:20, height:20, alignment: .center).cornerRadius(5)
                        }
                        
                        Button(action:
                                {
                            self.timer5 = !self.timer5
                            self.timer15 = false
                            self.timer10 = false
                            self.timer20 = false
                            self.timer = false
                            self.d = 10
                            setTime(key: 5)
                        }) {
                            Text("10'").foregroundColor(.black).font(.largeTitle)
                            Rectangle().fill(self.d == 10 ? Color.green : Color.red).frame(width:20, height:20, alignment: .center).cornerRadius(5)
                        }

                        Button(action:
                                {
                            self.timer5 = !self.timer5
                            self.timer15 = false
                            self.timer10 = false
                            self.timer20 = false
                            self.timer = false
                            self.d = 15
                            setTime(key: 5)
                        }) {
                            Text("15'").foregroundColor(.black).font(.largeTitle)
                            Rectangle().fill(self.d == 15 ? Color.green : Color.red).frame(width:20, height:20, alignment: .center).cornerRadius(5)
                        }

                        
                        Button(action:
                                {
                            self.timer5 = !self.timer5
                            self.timer15 = false
                            self.timer10 = false
                            self.timer20 = false
                            self.timer = false
                            self.d = 20
                            setTime(key: 5)
                        }) {
                            Text("20'").foregroundColor(.black).font(.largeTitle)
                            Rectangle().fill(self.d == 20 ? Color.green : Color.red).frame(width:20, height:20, alignment: .center).cornerRadius(5)
                        }

                        
                    }
                    Button(action:
                            {
                        self.timer = !self.timer
                        self.timer15 = false
                        self.timer10 = false
                        self.timer5 = false
                        self.timer15 = false
                        self.timer10 = false
                        self.timer20 = false
                        self.d = 0
                        setTime(key: -1)
                    }) {
                        HStack(alignment: .top, spacing: 10) {
                            Text("OFF").foregroundColor(.black).font(.largeTitle)
                            Rectangle().fill(self.d == 0 ? Color.green : Color.red).frame(width:20, height:20, alignment: .center).cornerRadius(5)
                        }
                    }
                    
                    
                    
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()})
                    {Text("Apply Changes")}
                    
                    
                }
                
            }
        }
    }
}


struct setView_Previews: PreviewProvider {
    static var previews: some View {
        setView()
    }
}
