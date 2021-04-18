//
//  ContentView.swift
//  Animations
//
//  Created by Pranav Kasetti on 11/04/2021.
//

import SwiftUI

struct ContentView: View {

  @State private var animationAmount: CGFloat = 1.012

  var body: some View {
    Button("Tap Me") {
//      self.animationAmount += 0.1
    }
    .padding(80)
    .font(.title)
    .background(Color.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .overlay(
      Circle()
        .stroke(Color.red)
        .scaleEffect(animationAmount)
        .opacity(Double(2 - animationAmount))
        .animation(
          Animation.easeOut(duration: 1)
            .repeatForever(autoreverses: true)
        )
    )
    .onAppear {
      self.animationAmount = 2
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
