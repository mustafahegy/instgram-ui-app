//
//  Story.swift
//  InstgramApp
//
//  Created by Mostafa on 10/10/2022.
//

import SwiftUI

struct Story: View {
    
    let imageName: String
    
    var body: some View {
        Button(action: {}) {
            Image(imageName)
                .resizable()
                .frame(width: 64, height: 64, alignment: .center)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white , lineWidth: 5))
                .overlay(Circle().stroke(Color.orange , lineWidth: 2))
        }
    }
}

struct Story_Previews: PreviewProvider {
    static var previews: some View {
        Story(imageName: Asset.avatar0.name)
    }
}
