//
//  StartButtonView.swift
//  Fruits
//
//  Created by Mohammad on 2023-08-20.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: PROPERTIES
    
    
    
    //MARK:- BODY
    var body: some View {
        Button {
            print("exit the onboarding")
        } label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    
            }
            .padding(.horizontal,16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }
        .preferredColorScheme(.dark)
        .accentColor(.white)
    }
}



//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            
    }
}
