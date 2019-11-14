//
//  ContentView.swift
//  TransformingViews
//
//  Created by Alpar Matyas on 29/10/2019.
//  Copyright © 2019 Alpar Matyas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 30) {

                Button(action: {
                    print("Button tapped")
                }) {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .background(Color.green)
                        .clipShape(Capsule())
                        .scaleEffect(1.2)
                }
                ZStack {
                    Image("6K")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                        .clipShape(Circle())
                        .overlay(Circle().strokeBorder(Color.red, lineWidth: 5))
                        .shadow(color: .red, radius: 5, x: 2, y: 2)
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .offset(x: -60, y: 40)
                        .blendMode(.multiply)
                        .colorMultiply(.red)
                        .saturation(0.2)
                        .contrast(0.2)
                }
                Text("rebeloper.com").modifier(CustomModifier())
                    .overlay(RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.blue, lineWidth: 4))

                Text("Subscribe")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .padding()
                    .background(Color.orange)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)

                HStack {
                    Text("learn to code")
                        .rotationEffect(.degrees(-90))
                        .font(.headline)

                    VStack (alignment: .leading) {
                        Text("with")
                            .font(.headline)
                            .offset(y: 15)
                            .padding(.bottom, 15)
                            .opacity(0.7)


                        Text("Alex Nagy")
                            .font(.largeTitle)
                            .padding(7)
                            .border(Color.red, width: 4)
                    }
                }
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
                    .mask(Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .blur(radius: 1))

            }
            .padding()
        }
//        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.red)
            .padding()
    }
}
