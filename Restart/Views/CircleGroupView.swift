//
//  CircleGroupView.swift
//  Restart
//
//  Created by Tanya on 30.10.2022.
//

import SwiftUI

struct CircleGroupView: View {
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State var isAnimating: Bool = false

    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 40)
                .foregroundColor(ShapeColor)
                .opacity(ShapeOpacity)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(lineWidth: 80)
                .foregroundColor(ShapeColor)
                .opacity(ShapeOpacity)
                .frame(width: 260, height: 260, alignment: .center)
        }
        .blur(radius: isAnimating ? 1 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
