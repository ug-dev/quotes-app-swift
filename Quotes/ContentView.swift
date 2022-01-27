//
//  ContentView.swift
//  Quotes
//
//  Created by Umang Gadhavana on 17/01/22.
//

import SwiftUI



struct ContentView: View {
    var quotes: [Quote]
    
    var body: some View {
        VStack{CircleImage(imageName: "lilly")
                .frame(width: 160, height: 160)
                .padding(.top, 100)
                .padding(.bottom, 20)
            
            HStack{
                Text("\(self.quotes.count) Quotes Available")
                    .font(.headline)
                    .italic()
                    .foregroundColor(.white)
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(self.quotes, id: \.name) { quote in
                        VStack{
                            CircleImage(imageName: "lilly")
                            Text(#" " \#(quote.quote)" "#)
                                .font(.headline)
                                
                            Divider()
                            Text("By - \(quote.name)")
                                .italic()
                                .font(.custom("Helvetica neue", size: 14))
                        }
                        .frame(width: 300, height: 300)
                        .foregroundColor(.gray)
                        .padding(.all, 4)
                        .background(Color.white)
                        .cornerRadius(13)
                        .overlay(Rectangle()
                                    .fill(
                                    
                                        LinearGradient(gradient: Gradient(colors: [.clear, .pink]), startPoint: .center, endPoint: .topLeading)
                                    )
                                    .clipped()
                                    .shadow(radius: 8)
                        )
                        
                    }
                }
            }
            Spacer()
        }
        .background(Image("motivation_bg") .resizable() .scaledToFill() .edgesIgnoringSafeArea(.all))
        
    }
}

struct CircleImage: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
              .clipShape(Circle())
              .shadow(radius: 10)
              .overlay(Circle() .stroke(Color.gray, lineWidth: 2))
              .frame(width: 100, height: 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ContentView(quotes: quoteData)
        }
        
    }
}
