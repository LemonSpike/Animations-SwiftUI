//
//  ControllingTheAnimationStack.swift
//  Animations
//
//  Created by Pranav Kasetti on 12/04/2021.
//

import SwiftUI

struct ControllingTheAnimationStack: View {

  @State private var enabled = false
  @State private var factor: CGFloat = 1.0

  var body: some View {
    VStack {
      Button("Tap Me") {
        factor = factor + 0.2
      }
      .background(Color.blue)
      .frame(width: 200, height: 200)
      .foregroundColor(.white)
      .scaleEffect(x: factor, y: factor, anchor: .center)
      .background(enabled ? Color.green : Color.red)
      .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
      .animation(enabled ? .interpolatingSpring(stiffness: 10, damping: 1) : .default)
//      .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0)) Doesn't work!!
      Button("Animations Enabled") {
        enabled.toggle()
      }
      .frame(width: 200, height: 200)
      .background(enabled ? Color.green : Color.red)
      .animation(nil)
      .foregroundColor(.white)
      .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
      .animation(.interpolatingSpring(stiffness: 10, damping: 1))
    }
  }
}

struct ControllingTheAnimationStack_Previews: PreviewProvider {
  static var previews: some View {
    ControllingTheAnimationStack()
  }
}
