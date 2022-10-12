//
//  StoryList.swift
//  InstgramApp
//
//  Created by Mostafa on 11/10/2022.
//

import SwiftUI

struct StoryList: View {
    
    let stories = ["avatar0","avatar1","avatar2","avatar3","avatar0","avatar1","avatar2","avatar3"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(stories , id: \.self ) { imageName in
                    VStack {
                        Story(imageName: imageName)
                        Text(imageName)
                            .font(.system(size: 12))
                    }
                }
            }
        }
    }
}

struct StoryList_Previews: PreviewProvider {
    static var previews: some View {
        StoryList()
    }
}
