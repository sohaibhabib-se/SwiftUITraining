//
//  SignUpView.swift
//  SwiftUITraining
//
//  Created by Muhammad Sohaib on 12/06/2024.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Button(action: {
                    
                }, label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .padding(10)
                    
                })
                .foregroundColor(.gray)
                Spacer(minLength: 0)
                Text("Sign Up")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(width: 113, height: 36, alignment: .center)
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                Button("Login", action: {
                    print("Show Button Pressed")
                })
                .foregroundColor(Color(UIColor(displayP3Red: 93/255, green: 176/255, blue: 117/255, alpha: 1)))
                .fontWeight(.regular)
                .padding([.trailing], 16)
                
            }
            .padding([.leading, .trailing], 15)
            Spacer()
                .frame(height: 16)
            TextField("Name", text: .constant(""))
                .frame(height: 50)
                .padding([.leading,.horizontal], 16.0)
                .border(Color(UIColor(displayP3Red: 232/255, green: 232/255, blue: 232/255, alpha: 1)), width: 1.0)
                .background(Color(UIColor(displayP3Red: 246/255, green: 246/255, blue: 246/255, alpha: 1)))
                .cornerRadius(10.0)
                .padding([.leading, .trailing], 16)
            Spacer().frame(height: 16)
            TextField("Email", text: .constant(""))
                .frame(height: 50)
                .padding([.leading,.horizontal], 16.0)
                .border(Color(UIColor(displayP3Red: 232/255, green: 232/255, blue: 232/255, alpha: 1)), width: 1.0)
                .background(Color(UIColor(displayP3Red: 246/255, green: 246/255, blue: 246/255, alpha: 1)))
                .cornerRadius(10.0)
                .padding([.leading, .trailing], 16)
            Spacer().frame(height: 16)
            ZStack(alignment: .topTrailing){
                TextField("Password", text: .constant(""))
                    .frame(height: 50)
                    .padding([.leading,.horizontal], 16.0)
                    .border(Color(UIColor(displayP3Red: 232/255, green: 232/255, blue: 232/255, alpha: 1)), width: 1.0)
                    .background(Color(UIColor(displayP3Red: 246/255, green: 246/255, blue: 246/255, alpha: 1)))
                    .cornerRadius(10.0)
                    .padding([.leading, .trailing], 16)
                Button("Show", action: {
                    print("Show Button Pressed")
                })
                .controlSize(.regular)
                .foregroundColor(Color(UIColor(displayP3Red: 93/255, green: 176/255, blue: 117/255, alpha: 1)))
                .fontWeight(.semibold)
                .padding([.trailing], 40)
                .padding([.top], 13)
            }
            Spacer()
                .frame(height: 100)
            Button("Sign Up", action: {
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
    SignUpView()
}
