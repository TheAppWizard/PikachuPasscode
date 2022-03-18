//
//  PikaViewOne.swift
//  PikachuLogin
//
//  Created by Shreyas Vilaschandra Bhike on 18/03/22.
//

import SwiftUI

struct PikaView: View {
    var body: some View {
        ViewOne()
    }
}

struct PikaView_Previews: PreviewProvider {
    static var previews: some View {
        PikaView()
    }
}


struct ViewOne: View {
    
       @State var shockOne = false
       @State var shockTwo = false
       @State var visibilityOpacity = false
      
       
       var body: some View {
  
             
       
          
           ZStack{
        
            
               //MARK:- body : close eyes
               Image("image2")
                   .resizable()
                   .frame(width: 350, height: 350, alignment: .center)
                   
               
               
               //MARK:- shock
               Image("shock1")
                   .resizable()
                   .frame(width: 350, height: 350)
                  
                   .opacity(shockOne ? 1 : 0)
                   .clipShape(Circle().offset(x: shockOne ? 0 : 125))
                   .onAppear() {
                            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                                   {
                                     shockOne.toggle()
                                    }
                        }
               
               Image("shock2")
                   .resizable()
                   .frame(width: 350, height: 350)
                   
                   .opacity(shockTwo ? 1 : 0)
                   .clipShape(Circle().offset(x: shockTwo ? 0 : -125))
                   .onAppear() {
                            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                                   {
                                     shockTwo.toggle()
                                    }
                             }
            
                  }
               
           }
      }


//
struct ViewTwo: View {
       @State var tail = false
      

       
       var body: some View {

           ZStack{
               //MARK:- tail
               Image("image3")
                   .resizable()
                   .frame(width: 300, height: 300, alignment: .center)
                   .rotationEffect(.degrees(9))
                   .offset(x: 80, y: 0)
                   .rotationEffect(.degrees(tail ? 0 : 35))
                   .onAppear() {
                            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                                   {
                                     tail.toggle()
                                    }
                        }
            
               //MARK:- body : close eyes
               Image("image2")
                   .resizable()
                   .frame(width: 350, height: 350, alignment: .center)
               
            
                  }
               
           }
      }

