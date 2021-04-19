//
//  BuildingCustomTransitionsViewModifiers.swift
//  Animations
//
//  Created by Pranav Kasetti on 19/04/2021.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
  let amount: Double
  let anchor: UnitPoint

  func body(content: Content) -> some View {
    content.rotationEffect(.degrees(amount), anchor: anchor).clipped()
  }
}

extension AnyTransition {
  static var pivot: AnyTransition {
    .modifier(
      active: CornerRotateModifier(amount: -90, anchor: .topLeading),
      identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
    )
  }
}

struct BuildingCustomTransitionsViewModifiers: View {

  @State private var angle: Double = 0

    var body: some View {
      Text("Hello, World!")
        .onTapGesture {
          self.angle += 0.1
        }
        .rotationEffect(.init(radians: angle))
        .transition(.pivot)
    }
}

struct BuildingCustomTransitionsViewModifiers_Previews: PreviewProvider {
    static var previews: some View {
        BuildingCustomTransitionsViewModifiers()
    }
}
