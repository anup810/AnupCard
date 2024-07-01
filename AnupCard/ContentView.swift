//
//  ContentView.swift
//  AnupCard
//
//  Created by Anup Saud on 2024-07-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .ignoresSafeArea()
            VStack {
                Image("ANUP")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150,height: 150,alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                            .stroke(Color.white,lineWidth: 5)
                    )
                

                
                Text("Anup Saud")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundStyle(.white)
                Text("iOS Developer")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1 519-702-8176", imageName: "phone.fill")
                InfoView(text: "anupsaud10@gmail.com", imageName: "envelope.fill")
            
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                    
                }
                
            )
    }
}
