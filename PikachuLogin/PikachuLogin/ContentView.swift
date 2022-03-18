//  ContentView.swift
//  PikachuPasscode
//
//  Created by Shreyas Vilaschandra Bhike on 18/03/22.

//  MARK: Instagram
//  TheAppWizard
//  MARK: theappwizard2408

import SwiftUI

struct ContentView: View {
    var body: some View {
        FinalView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: How it Works ?
// 1. Pikachu : Happy face
// 2. While Entering Pin -
//    Pikachu : Eyes Closed
// 3. Correct Pin -
//    Pikachu : Open Eyes
// 4. Source Code on Github












struct FinalView: View {
    @State private var pin1 : String = ""
    @State private var pin2 : String = ""
    @State private var pin3 : String = ""
    @State private var pin4 : String = ""
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            
            Circle()
                .foregroundColor(Color("bg"))
                .frame(width: 500, height: 500)
                .offset(x: 0, y: -300)
            
            
            Text("P I K A C H U")
                .font(.system(size: 52))
                .fontWeight(.light)
                .foregroundColor(.black)
                .offset(x: 0, y: -300)
            
            ViewTwo().offset(x: 0, y: -60)
            
            ZStack{
                
                
                
            ZStack{
               
                
           
            if !pin1.isEmpty {
                Image("image1")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                   
                   }
                
              
               
            
            if !pin2.isEmpty {
                Image("image1")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                    
                   }
                
               
            
            if !pin3.isEmpty {
                Image("image1")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                    
                   }
              
               
            
            
            if !pin4.isEmpty { // <1>
                Image("image1")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                    
                   }
                
               
            }
            
            if ((pin1+pin2+pin3+pin4) == "1234")
            {
                   ViewOne()
                    

                }
            } .offset(x: 0, y: -60)
                
            
            
            Text("E N T E R   P I N")
                .font(.title)
                .fontWeight(.regular)
                .foregroundColor(Color.white)
                .offset(x: -80, y: 170)
        
        HStack{

            TextField("0", text: $pin1)
                .foregroundColor(.white)
                .offset(x: 10, y: 0)
                .frame(width: 30, height: 50)
                .padding()
                       .border(Color.white, width: 3)
            
            TextField("0", text: $pin2)
                .foregroundColor(.white)
                .offset(x: 10, y: 0)
                .frame(width: 30, height: 50)
                .padding()
                       .border(Color.white, width: 3)
           
            TextField("0", text: $pin3)
                .foregroundColor(.white)
                .offset(x: 10, y: 0)
                .frame(width: 30, height: 50)
                .padding()
                .border(Color.white, width: 3)
            
            TextField("0", text: $pin4)
                .foregroundColor(.white)
                .offset(x: 10, y: 0)
                .frame(width: 30, height: 50)
                .padding()
                       .border(Color.white, width: 3)
            
            ZStack{
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 70, height: 30)
                
                if ((pin1+pin2+pin3+pin4) == "1234")
                {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 40, height: 30)
                        .foregroundColor(.white)
                       
                }
                
                if ((pin1+pin2+pin3+pin4) != "1234")
                {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                       
                }
            }
                
          }  .offset(x: 0, y: 250)
            
        }
    }
}


//
