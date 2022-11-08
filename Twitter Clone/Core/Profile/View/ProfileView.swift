//
//  ProfileView.swift
//  Twitter Clone
//
//  Created by Sayyed Rizwan on 06/11/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    
    var body: some View {
        VStack(alignment: .leading){
            
            headerProfileView
            
            ActionButtonView
            
            UserInfoDetails
            
            HStack{
                ForEach(TweetFilterViewModel.allCases, id: \.rawValue){ item in
                    VStack(alignment: .center) {
                        Text(item.title)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(selectedFilter == item ? .headline : .title3)
                            .foregroundColor(selectedFilter == item ? .black : .gray)
                        
                        if selectedFilter == item
                    }.onTapGesture {
                        withAnimation(.easeOut){
                            self.selectedFilter = item
                        }
                    }
                    Spacer()
                }
            }
            
            
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
    
    var UserInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4){
            HStack {
                Text("Rizwan Sayyed")
                Image(systemName: "checkmark.seal.fill").foregroundColor(Color(.blue))
            }
            
            Text("@rizwan").font(.subheadline).foregroundColor(.gray)
            Text("The Android and IOS native developer. SO here is mad h d ydygfg")
                .font(.subheadline).foregroundColor(.black)
            
            
            Spacer().frame(height: 13)
            HStack{
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("Colaba, Mumbai")
                }
                
                Spacer().frame(width: 26)
                
                HStack{
                    Image(systemName: "link").foregroundColor(.blue)
                    Text("rizwansayyed.com").foregroundColor(.blue)
                }
                
            }.font(.caption2).foregroundColor(.gray)
            
            
            HStack(spacing: 24){
                HStack{
                    Text("877").bold()
                    Text("Following").font(.headline).foregroundColor(.gray)
                }
                
                
                HStack{
                    Text("6.9M").bold()
                    Text("Following").font(.headline).foregroundColor(.gray)
                }
                
            }.padding(.vertical)
            
        }.padding(.leading, 9).padding(.trailing, 9)
        
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
