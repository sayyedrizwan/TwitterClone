//
//  TweetsRowView.swift
//  Twitter Clone
//
//  Created by Sayyed Rizwan on 05/11/22.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Circle().frame(width: 56, height: 56).foregroundColor(Color(uiColor: .systemBlue))
                
                VStack(alignment: .leading, spacing: 10){
                    HStack{
                        Text("Rizwan Sayyed").font(.subheadline).bold()
                        Text("@sayyedrizwan").foregroundColor(.gray).font(.caption).bold()
                        Text("3d").foregroundColor(.gray).font(.caption2).bold()
                    }
                    
                    Text("I beliver in You, Yehh....").font(.subheadline).multilineTextAlignment(.leading)
                }
            }
            
            Spacer().frame(height: 30)
            
            HStack{
                Spacer()
                
                Button(action: {
                    print("button pressed")
                    
                }) {
                    Image(systemName: "bubble.left")
                        .font(.headline)
                }
                
                Spacer()
                
                Button(action: {
                    print("button pressed")
                    
                }) {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.headline)
                }
                
                
                Spacer()
                
                Button(action: {
                    print("button pressed")
                    
                }) {
                    Image(systemName: "heart")
                        .font(.headline)
                }
                
                
                Spacer()
                
                Button(action: {
                    print("button pressed")
                    
                }) {
                    Image(systemName: "bookmark")
                        .font(.headline)
                }
                
                Spacer()
            }.foregroundColor(.gray)
            
            Divider().padding(.top, 30)
            
        }.padding()
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
