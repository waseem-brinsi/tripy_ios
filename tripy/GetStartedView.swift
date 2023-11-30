//
//  ContentView.swift
//  tripy
//
//  Created by wetcci on 27/11/2023.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        
        GetStarted().preferredColorScheme(.light)
        
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
    
}



struct GetStarted: View {
    var body: some View {
        NavigationView{
            
            ZStack{
                Image("background").resizable().scaledToFill().edgesIgnoringSafeArea(.all)
                VStack{
                    Image("logo").resizable().frame(width: 300,height: 200)
                    // Get Started
                    NavigationLink(destination: SignUp()){
                       
                            Text("Get Started").frame(width: 300,height: 40)
                                .padding()
                                
                                .font(.title)
                                .background(Color.yellow)
                                .foregroundColor(.blue)
                                .cornerRadius(30)
                    }
                    
                    
                    //Sign In
                    NavigationLink(destination: SignInView()){
                            Text("Sign In").frame(width: 300,height: 40)
                                .padding()
                                .font(.title)
                               .background(Color.white)
                                .foregroundColor(.blue)
                                .cornerRadius(30)
                        }
                    
                        
                    }.shadow(color: Color.black, radius: 60, x:0.0,y:16)

                }
                
            
            
            
        }
        
    }
}
