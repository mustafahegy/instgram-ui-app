//
//  FeedItem.swift
//  InstgramApp
//
//  Created by Mostafa on 11/10/2022.
//

import SwiftUI

struct FeedItem: View {
    
    let captionButtons = [
        Asset.heart.name,
        Asset.comment.name,
        Asset.share.name,
        Asset.bookmark.name
    ]
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Image(Asset.feedImage.name)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                Text("mustafa")
                    .bold()
                Spacer()
                Button(action: {}) { Image(Asset.more.name)
                }
            }.padding(.horizontal, 4)
            
            Image(Asset.feedImage.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                ForEach(captionButtons , id: \.self ) { button in
                    Button(action: {}) {
                        Image(button)
                    }
                    if button == Asset.share.name {
                        Spacer()
                    }
                }
            }.padding(.horizontal, 4)
            
            HStack() {
                Text("100")
                    .bold()
                    .font(.system(size: 14))
                Text("Like")
                    .bold()
                    .font(.system(size: 14))
            }.padding(.horizontal, 4)
            
            HStack() {
                Text("mustafa")
                    .bold()
                Text("hellow world!")
            }.padding(.horizontal, 4)
            
            HStack() {
                Image(Asset.feedImage.name)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                TextField("Add comment ...", text: .constant(""))
                Button(action: {}) { Image(Asset.plus.name)
                }
            }.padding(.horizontal, 4)
            
            Text("10 minutes ago")
                .font(.caption)
                .foregroundColor(Color(.systemGray3))
                .padding(.horizontal, 4)
            
            Spacer()
        }
    }
}

struct FeedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeedItem()
    }
}
