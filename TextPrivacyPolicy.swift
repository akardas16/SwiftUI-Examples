//
//  ContentView.swift
//  LearningApp
//
//  Created by Abdullah Kardaş on 12.06.2024.
//

import SwiftUI


struct ContentView: View {
    
    @State var count:Int = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    @State var title = "Title"
    
    var body: some View {
        VStack(alignment:.center) {
        
            VStack{
                HStack(spacing:0){
                    Text("By signing up, you are agree to our ")
                    Text("Terms of Services")
                        .underline()
                        .foregroundStyle(.blue)
                        .onTapGesture {
                        print("Terms of Services")
                       }
                }
            
                HStack(spacing:0){
                    Text("and acknowledge our")
                    Text(" Privacy Policy")
                        .underline()
                        .foregroundStyle(.blue)
                        .onTapGesture {
                            print("Privacy Policy")
                        }
                }
                
            }.font(.caption).multilineTextAlignment(.center)
         
                      
          
    
        }
        .onReceive(timer, perform: { _ in
            title = "title \(count)"
            count += 1
            if count > 7 {
                timer.upstream.connect().cancel()
            }
        })
        
    }
}

struct HeaderView:View {
     var titles:String
     var name:String
    init(title:String, iconName:String){
        self.titles = title
        self.name = iconName
    }
    var body: some View {
        VStack(spacing:4){
            Text(titles).font(.largeTitle).foregroundStyle(.brown).italic()
            Label("Translate", systemImage: name)
        }
    }
}

#Preview {
    ContentView().preferredColorScheme(.dark)
}


