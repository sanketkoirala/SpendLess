//
//  IntroductionScreen.swift
//  SpendLess
//
//  Created by Sanket Koirala on 8/13/24.
//

import SwiftUI

struct IntroductionScreen: View {
    @AppStorage ("isFirstTime") private var isFirstTime: Bool = true
    
    var body: some View {
        VStack(spacing: 15){
            Text("Whats new in Spend Less?")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 60)
                .padding(.bottom, 60)
            
            VStack(alignment: .leading, spacing: 25, content: {
               PointView(symbol: "dollarsign", title: "Transaction", subTitle: "Keep track of your expenses")
                
                PointView(symbol: "chart.bar.fill", title: "Visual", subTitle: "View Graphs of your expenses")
                
                PointView(symbol: "magnifyingglass", title: "Advance Filters", subTitle: "Find the expenses you wnat by advanced search and filters")
            })
            
            
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            .padding(.horizontal, 25)
            
            Spacer(minLength: 10)
            
            Button(action: {
                isFirstTime = false
            }, label: {
                Text("Continue")
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 25)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
                    .padding(.horizontal, 25)
            })
        }
    }
    @ViewBuilder
    func PointView(symbol: String, title: String, subTitle: String ) -> some View {
        HStack(spacing: 15){
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6, content: {
                 Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .font(.title3)
                    .fontWeight(.light)
                    
                
            })
        }
        
    }
}

#Preview {
    IntroductionScreen()
}
