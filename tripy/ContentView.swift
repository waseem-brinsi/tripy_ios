//
//  ContentView.swift
//  tripy
//
//  Created by wetcci on 27/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home().preferredColorScheme(.light)
        
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}


struct Home : View {
    
    @State var email = ""
    @State var pass = ""
       
    var body: some View{
        
            ZStack{
                Image("background").resizable().scaledToFill().edgesIgnoringSafeArea(.all)

                VStack{
                    Image("logo").resizable().frame(width: 60,height: 60)
                    // container login and
                    VStack{
                        //Login
                        VStack{
                            //Login
                            //Login text//
                            HStack{
                                Text("Login").foregroundColor(Color.white).font(.system(size: 36)).fontWeight(.bold)
                                Spacer(minLength: 0)
                            }
//                          email and password
                            VStack{
                                //Email Address TextField
                                HStack{
                                    Text("Email Address").foregroundColor(Color.white).font(.system(size: 20)).font(.title).fontWeight(.light)
                                    Spacer(minLength: 0)
                                }
                                HStack{
                                    Image(systemName:"envelop").foregroundColor(Color.white)
                                    TextField("", text: self.$email).foregroundColor(Color.white)
                                }
                                Divider().background(Color.white)
                               
    
                                // Password Field
                                HStack{
                                    Text("Password").foregroundColor(Color.white).font(.system(size: 20)).font(.title).fontWeight(.light)
                                    Spacer(minLength: 0)
                                }
                                HStack{
                                    Image(systemName:"envelop.fill").foregroundColor(Color("Color1"))
                                    SecureField("", text: self.$pass).foregroundColor(Color.white)
                                }
                                Divider().background(Color.white)

                                //Forget Password?
                                HStack{
                                    Spacer(minLength:0)
                                    Button(action: {}) {
                                        Text("Forget Password?")
                                            .foregroundColor(Color.white.opacity(0.6))
                                    }
                                }
                                .padding(.top, 30)
                                .padding(.bottom,10)
                            }
                            .padding(.horizontal)
                            .padding(.top, 40)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white,lineWidth: 1))
                            
                        }
                        .padding(.horizontal)
                        .padding(.top, 30)
                        
    
                      }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue.opacity(0.7))).frame(width:375)
                }
            }
       
    }
    
}


// Curve...


struct CShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path{path in

            // right side curve...
            
            path.move(to: CGPoint(x: rect.width, y: 100))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: 0))
            
            
        }
    }
}

struct CShape1 : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path{path in

            // left side curve...
            
            path.move(to: CGPoint(x: 0, y: 100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            
        }
    }
}

