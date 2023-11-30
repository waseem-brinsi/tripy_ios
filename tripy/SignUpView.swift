//
//  Sign Up.swift
//  tripy
//
//  Created by wetcci on 30/11/2023.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        SignUp().preferredColorScheme(.light)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct SignUp: View {
    
    @State var FirstName = ""
    @State var LastName = ""
    @State var Email = ""
    @State var Address = ""
    @State var Phone = ""
    @State var Password = ""
    @State var ConfimPassword = ""
    
       
    var body: some View{
        
        ZStack{
            Image("background").resizable().scaledToFill().edgesIgnoringSafeArea(.all)
            VStack{
                Text("Sign up").foregroundColor(Color.white).font(.system(size: 36)).fontWeight(.bold)
                Image("profile").resizable().frame(width: 130,height: 130)
                    // container login and
                

                VStack{
                    HStack{
                        TextField("First Name", text: self.$FirstName)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            
                        Spacer()
                        
                        TextField("Last Name", text: self.$LastName)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                        Spacer()
                    }.padding(.top,10).padding(.bottom,10)
                    
                    TextField("Email Address", text: self.$Email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                    
                    TextField("Address", text: self.$Address)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)

                    TextField("Phone", text: self.$Phone)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
    //                password and password confimation
                    HStack{
                        SecureField("Password", text: self.$Password)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                        
                        
                        SecureField("Confim Password", text: self.$ConfimPassword)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            
                    }


                    
                    
                    HStack{
                        Button(action: {}) {
                            Text("Forget Password?")
                                .foregroundColor(Color.yellow.opacity(1))
                        }
                    }
                    .padding(.top, 10)
                }.shadow(color: Color.black, radius: 60, x:0.0,y:16)
                //first and last name
               
               
                
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



