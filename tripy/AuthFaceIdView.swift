//
//  AuthFaceIdView.swift
//  tripy
//
//  Created by wetcci on 1/12/2023.
//

import SwiftUI
import LocalAuthentication


struct AuthFaceIdView: View {
    @State private var isUnlocked = false
    @State private var showAuthenticationError = false
    @State private var isActive = false
    var body: some View {
        
        NavigationView {
            ZStack {
                Image("background").resizable().scaledToFill().edgesIgnoringSafeArea(.all)
                VStack {
                    if isUnlocked {
                        Image("unlock").resizable().frame(width: 200,height: 200)
                                .padding()
                                .font(.title)
                                .background(Color.yellow)
                                .foregroundColor(.blue)
                                .cornerRadius(30)
                        NavigationLink(destination: GetStarted(),isActive: $isActive){
                            EmptyView()

                        }.hidden()
                        .onAppear {
                                   // Perform any necessary condition check or logic to determine when to navigate
                                   // Set isActive to true to trigger automatic navigation
                                   isActive = true
                               }
                    } else {
                        Image("lock").resizable().frame(width: 200,height: 200)
    //                    Text("Locked")
    //                        .font(.largeTitle)
    //                        .padding()
                    }
                    
                    Button(action: authenticate) {
                        Text("Authenticate with Face ID").frame(width: 300,height: 40)
                                .padding()
                                .font(.title2)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                    }
                    .padding()
                }
                .alert(isPresented: $showAuthenticationError) {
                    Alert(title: Text("Authentication Failed"),
                          message: Text("Unable to authenticate with Face ID."),
                          dismissButton: .default(Text("OK")))
            }
            }
        }
    }
    
    
    
func authenticate() {
            let context = LAContext()
            var error: NSError?
            
            if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
                let reason = "Authenticate to unlock the app"
                
                context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { (success, authenticationError) in
                    DispatchQueue.main.async {
                        if success {
                            isUnlocked = true
                        } else {
                            showAuthenticationError = true
                        }
                    }
                }
            } else {
                showAuthenticationError = true
            }
        }
}

struct AuthFaceIdView_Previews: PreviewProvider {
    static var previews: some View {
        AuthFaceIdView()
    }
}
