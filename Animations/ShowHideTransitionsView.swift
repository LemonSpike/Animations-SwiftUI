//
//  ShowHideTransitionsView.swift
//  Animations
//
//  Created by Pranav Kasetti on 19/04/2021.
//

import SwiftUI

struct ShowHideTransitionsView: View {

  @State private var isShowingRed = false

  var body: some View {
    VStack {
      Button("Tap Me") {
        withAnimation {
          self.isShowingRed.toggle()
        }
      }

      if isShowingRed {
        Rectangle()
          .fill(Color.red)
          .frame(width: 200, height: 200)
          .transition(.asymmetric(insertion: .scale, removal: .opacity))
      }
    }
  }
}

struct ShowHideTransitionsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideTransitionsView()
    }
}
