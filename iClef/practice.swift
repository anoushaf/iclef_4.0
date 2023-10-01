//
//  parctice.swift
//  iClef
//
//  Created by Anousha Farshid on 9/17/23.
//

import SwiftUI

struct practice: View {
    var l = getLan()

    var body: some View {
        NavigationView{
            ZStack(alignment: .center){
                Image("background").resizable().ignoresSafeArea(.all)
                VStack{
                    HStack{
                        NavigationLink(destination: gView()){
                            Image("sol").resizable()
                        }
                        NavigationLink(destination: bView()) {
                        Image("fa").resizable()
                        }
                    
                    }
                    HStack{
                        NavigationLink(destination: c4View()) {
                            Image("do4").resizable()
                        }
                        NavigationLink(destination: c3View()) {
                            Image("do3").resizable()
                        }
                        
                }
                    HStack{
                           NavigationLink(destination: c2View()) {
                               Image("do2").resizable()
                           }
                           NavigationLink(destination: c1View()) {
                               Image("do1").resizable()
                        }
                    }
                }.aspectRatio(contentMode: .fit)
            }
                
        }.navigationViewStyle(StackNavigationViewStyle())
}
}
struct practice_Previews: PreviewProvider {
    static var previews: some View {
        practice()
    }
}
