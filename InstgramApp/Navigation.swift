//
//  Navigation.swift
//  InstgramApp
//
//  Created by Mostafa on 10/10/2022.
//

import SwiftUI

struct Navigation: View {
    let navigationAssetsNames = ["add","heart","messenger"]
    var body: some View {
        HStack {
            Image(Asset.logo.name)
            Spacer()
            ForEach(navigationAssetsNames , id: \.self ) { imageName in
                NavigationLink(destination: Text(imageName), label: { Image(imageName)
                })
            }
        }
    }
}
struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
