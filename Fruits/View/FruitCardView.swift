//
//  FruitCardView.swift
//  Fruits
//
//  Created by Mohammad on 2023-08-20.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating = false
    
    
    
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            
            VStack {
                //MARK: Fruit Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x:6 , y:8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                
                //Fruit: Title
                
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x:2, y:2)

                //Fruit: Headline
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                    
                //Button: Start
                StartButtonView()
            }//:VSTACK
            
        }//: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.8)) {
                isAnimating = true
            }
        }
        
        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"),Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}



//MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            
    }
}
