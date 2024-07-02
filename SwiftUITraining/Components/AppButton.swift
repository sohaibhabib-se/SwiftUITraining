//
//  AppButton.swift
//  SwiftUITraining
//
//  Created by Muhammad Sohaib on 28/06/2024.
//

import SwiftUI

struct AppButton: View {
    
    var btnTitle: String
    
    var body: some View {
        Button(btnTitle, action: {
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
    }
}

#Preview {
    AppButton(btnTitle: "Log In")
}
