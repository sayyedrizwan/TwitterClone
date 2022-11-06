//
//  ProfileView.swift
//  Twitter Clone
//
//  Created by Sayyed Rizwan on 06/11/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
           
            headerProfileView
            
            ActionButtonView
            
            Spacer()
        }
        
    }
}


extension ProfileView{
    var headerProfileView: some View {
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue).ignoresSafeArea()
            
            VStack {
                
                Button{
                    
                } label: {
                    Image(systemName: "arrow.left").resizable()
                        .frame(width: 20, height: 16).foregroundColor(.white)
                        .offset(x:16, y:12)
                }
                
                Circle().frame(width: 72, height: 72).offset(x:16, y:26)
            }
        }.frame(height: 96)
    }
    
    var ActionButtonView: some View {
        HStack(spacing: 20){
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3).padding(6).overlay(Circle()
                    .stroke(Color.gray, lineWidth: 0.70))
            
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.title3).padding(6).overlay(RoundedRectangle(cornerRadius: 24).stroke(Color.gray, lineWidth: 0.75))
                
            }
        
    
        }.padding(.trailing)
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
