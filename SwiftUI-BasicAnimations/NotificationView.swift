//
//  NotificationView.swift
//  SwiftUI-BasicAnimations
//
//  Created by Arpit Dixit on 05/08/21.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        Text("Notification")
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.size.width - 20, height: 100, alignment: .center)
            .background(Color.green)
            .cornerRadius(20.0)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
