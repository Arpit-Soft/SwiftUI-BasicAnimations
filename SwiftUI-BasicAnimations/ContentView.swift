//
//  ContentView.swift
//  SwiftUI-BasicAnimations
//
//  Created by Arpit Dixit on 05/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggleDetails = false
    
    @State var movePlain = false
    
    @State var showNotification = false
    
    var body: some View {
        
        VStack {
            
            Button("Press Me") {
                toggleDetails.toggle()
            }
            .padding()
            
            HStack {
                Text(toggleDetails ? "Hide Details" : "Show Details")
                Image(systemName: "chevron.up.square")
                    .rotationEffect(toggleDetails ? .degrees(0) : .degrees(180))
                    .animation(.default)
            }
            
            Spacer()
            
            Button("Press me to move the plain") {
                movePlain.toggle()
            }
            .padding()
            
            HStack {
                Text("🛬")
                    .font(.custom("Arial", size: 100))
                    .offset(x: movePlain ? UIScreen.main.bounds.width - 120 : 0)
                    .animation(.interpolatingSpring(mass: 2.0, stiffness: 100.0, damping: 10, initialVelocity: 0))
                Spacer()
            }
            
            Spacer()
            
            NotificationView()
                .offset(y: showNotification ? -UIScreen.main.bounds.size.height + 230 : -UIScreen.main.bounds.size.height)
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10.0, initialVelocity: 0))
            
            Button("Press to show notification view") {
                showNotification.toggle()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
