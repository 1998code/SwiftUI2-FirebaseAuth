//
//  ContentView.swift
//  Shared
//
//  Created on 19/7/2020.
//

import SwiftUI
import GoogleSignIn

struct ContentView: View {
    
    @ObservedObject var info : AppDelegate
    
    var body: some View {
            VStack{
                Group{
                Spacer()
                Text("Learn")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Startway.io")
                // Email ID Display
                Text(info.email)
                        .padding(.top,25)
                }
                Group{
                    Text(" ")
                    Spacer()
                    Divider()
                    Text(" ")
                }
                HStack{
                    Image(systemName: "lock.rectangle.stack")
                    Text("Login Credential")
                        .font(.callout)
                        .fontWeight(.regular)
                }
                Text(" ")
                // Apple Login Button
                Button(action: {
                    GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.first?.rootViewController
                    GIDSignIn.sharedInstance()?.signIn()
                }) {
                    Text("  Sign in with Apple ")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 45)
                        .background(Color.black)
                        .clipShape(Capsule())
                }
                Text(" ")
                // Google Login Button
                Button(action: {
                    GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.first?.rootViewController
                    GIDSignIn.sharedInstance()?.signIn()
                }) {
                    Text(" Sign in with Google ")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 45)
                        .background(Color.blue)
                        .clipShape(Capsule())
                }
                Text(" ")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    @ObservedObject var info : AppDelegate
    static var previews: some View {
        VStack{
            Group{
            Spacer()
            Text("Learn")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Startway.io")
            }
            Group{
            Text(" ")
            Spacer()
            Divider()
            Text(" ")
            }
            HStack{
            Image(systemName: "lock.rectangle.stack")
            Text("Login Credential")
                .font(.callout)
                .fontWeight(.regular)
            }
            Text(" ")
            // Apple Login Button
            Button(action: {
                GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.first?.rootViewController
                GIDSignIn.sharedInstance()?.signIn()
            }) {
                Text("  Sign in with Apple ")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 45)
                    .background(Color.black)
                    .clipShape(Capsule())
            }
            Text(" ")
            // Google Login Button
            Button(action: {
                GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.first?.rootViewController
                GIDSignIn.sharedInstance()?.signIn()
            }) {
                Text(" Sign in with Google ")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 45)
                    .background(Color.blue)
                    .clipShape(Capsule())
            }
        }
    }
}

