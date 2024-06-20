//
//  LoginView.swift
//  SwiftUITraining
//
//  Created by Muhammad Sohaib on 11/06/2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            Text("Log In")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
                .frame(height: 16)
            TextField("Email", text: .constant(""))
                .frame(height: 50)
                .padding([.leading,.horizontal], 16.0)
                .border(Color(UIColor(displayP3Red: 232/255, green: 232/255, blue: 232/255, alpha: 1)), width: 1.0)
                .background(Color(UIColor(displayP3Red: 246/255, green: 246/255, blue: 246/255, alpha: 1)))
                .cornerRadius(10.0)
                .padding(.all, 16)
            ZStack(alignment: .trailing){
                TextField("Password", text: .constant(""))
                    .frame(height: 50)
                    .padding([.leading,.horizontal], 16.0)
                    .border(Color(UIColor(displayP3Red: 232/255, green: 232/255, blue: 232/255, alpha: 1)), width: 1.0)
                    .background(Color(UIColor(displayP3Red: 246/255, green: 246/255, blue: 246/255, alpha: 1)))
                    .cornerRadius(10.0)
                    .padding(.all, 16)
                Button("Show", action: {
                    print("Show Button Pressed")
                })
                .controlSize(.regular)
                .foregroundColor(Color(UIColor(displayP3Red: 93/255, green: 176/255, blue: 117/255, alpha: 1)))
                .fontWeight(.semibold)
                .padding(.all, 40)
            }
            
            Spacer()
                .frame(height: 100)
            Button("Log In", action: {
                print("Button Pressed")
            })
            .buttonStyle(.plain)
            .frame(height: 50)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//            .padding(.all, 10)
            .background(Color(UIColor(displayP3Red: 93/255, green: 176/255, blue: 117/255, alpha: 1)))
            .controlSize(.extraLarge)
            .foregroundColor(.white)
            .font(.title)
            .clipShape(.capsule)
            .padding()
            
            Button("Forgot your password?", action: {
                print("Forgot Button Pressed")
            })
            .controlSize(.regular)
            .foregroundColor(Color(UIColor(displayP3Red: 93/255, green: 176/255, blue: 117/255, alpha: 1)))
            .fontWeight(.semibold)
            .padding([.top],0)
            
            
            
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    LoginView()
}
