//
//  ContentView.swift
//  LearningApp
//
//  Created by Abdullah Kardaş on 12.06.2024.

//  https://github.com/SDWebImage/SDWebImageSwiftUI.git

import SwiftUI
import UIKit
import SDWebImageSwiftUI


struct ContentView: View {
    
    @State var count:Int = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    @State var title = "Title"
  
    
    var body: some View {
        VStack(alignment:.center,spacing:45) {
     
                
            WebImage(url: URL(string: "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"))
                .resizable()
                .indicator(.activity)
                .transition(.fade)
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 200,height: 200)
                .blur(radius: 8)
            
            WebImage(url: URL(string: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic")) { image in
                   image.resizable() // Control layout like SwiftUI.AsyncImage, you must use this modifier or the view will use the image bitmap size
               } placeholder: {
                   ProgressView().tint(.blue).scaleEffect(1.5)
               }
               .onSuccess { image, data, cacheType in
                   // Success
                   // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
               }
               .onFailure(perform: { error in
                   print(error.localizedDescription)
               })
               //.indicator(.activity) // Activity Indicator
               .transition(.fade(duration: 0.5)) // Fade Transition with duration
               .scaledToFill()
               .clipShape(Circle())
               .frame(width: 200,height: 200)

           
            Image("girl").resizable()
                .scaledToFill()
                .frame(width: 150,height: 150)
                .clipShape(Circle())
              
    
        }
    }
}

#Preview {
    ContentView().preferredColorScheme(.dark)
}


