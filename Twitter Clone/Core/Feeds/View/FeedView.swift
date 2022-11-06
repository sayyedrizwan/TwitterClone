//
//  FeedView.swift
//  Twitter Clone
//
//  Created by Sayyed Rizwan on 05/11/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack(){
                ForEach(0...20, id: \.self){i in
                   TweetsRowView()
                }
            }
        }
    
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
