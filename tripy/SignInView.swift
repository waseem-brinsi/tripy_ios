//
//  Login.swift
//  tripy
//
//  Created by wetcci on 30/11/2023.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        SignIn().preferredColorScheme(.light)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}


struct SignIn: View {
    
    @State var email = ""
    @State var pass = ""
       
    var body: some View{
        
        ZStack{
            Image("background").resizable().scaledToFill().edgesIgnoringSafeArea(.all)
            VStack{
                    Image("logo").resizable().frame(width: 250,height: 250)
                    // container login and
                    Text("Sign In").foregroundColor(Color.white).font(.system(size: 36)).fontWeight(.bold)
                TextField("Email Address", text: self.$email)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(50.0)
                    .shadow(color: Color.black, radius: 60, x:0.0,y:16)
                Spacer().frame(height: 30)
                SecureField("Password", text: self.$pass)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(50.0)
                    .shadow(color: Color.black, radius: 60, x:0.0,y:16)
                
                HStack{
            
                    Button(action: {}) {
                        Text("Forget Password?")
                            .foregroundColor(Color.yellow.opacity(1))
                    }
                }
                .padding(.top, 10)
               
                
                // Sign In Button
                Button(action: {
                                // Action to perform when the button is tapped
                            }) {
                                Text("Sign In")
                                    .padding(.all)
                                    .font(.title)
                                    .background(Color.yellow)
                                    .foregroundColor(.blue)
                                    .cornerRadius(30)
                                    .shadow(color: Color.black, radius: 60, x:0.0,y:16)
                            }.padding()
                
                //social media login
                HStack{
                    Button(action: {
                        // Action to perform when the button is tapped
                    }) {
                        HStack {
                            Image("google") // Replace "logo" with the name of your image asset
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24) // Adjust the size of the logo image
                        }
                        .padding(10)
                        .background(Color.white)
                        .background(Color.blue)
                        .cornerRadius(30)
                    }
                    
                    
                    Button(action: {
                        // Action to perform when the button is tapped
                    }) {
                        HStack {
                            Image("facebook") // Replace "logo" with the name of your image asset
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24) // Adjust the size of the logo image
                        }
                        .padding(10)
                        .background(Color.white)
                        .background(Color.blue)
                        .cornerRadius(30)
                    }
                    
                    Button(action: {
                        // Action to perform when the button is tapped
                    }) {
                        HStack {
                            Image("apple") // Replace "logo" with the name of your image asset
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24) // Adjust the size of the logo image
                        }
                        .padding(10)
                        .background(Color.white)
                        .background(Color.blue)
                        .cornerRadius(30)
                    }
                }
                

            

            }.padding()
            .padding(.all)
                      
                    }

                    
                
            }
       
    }
    
