//
//  custom_divider.swift
//  clone_instagram
//
//  Created by 이전희 on 2022/06/23.
//

import UIKit
import SwiftUI

struct custom_divider: View{
    var text:String
    var body: some View{
        HStack(spacing:20){
            VStack{Divider()
                    .padding(0.5)
                .background(Color(UIColor(red: 180/255, green: 180/255, blue: 180/255,alpha: 1)))}
            Text(text)
                .font(.system(size: 15))
                .fontWeight(.semibold)
                .foregroundColor(Color(UIColor(red: 120/255, green: 120/255, blue: 120/255,alpha: 1)))
            VStack{Divider()
                    .padding(0.5)
                .background(Color(UIColor(red: 180/255, green: 180/255, blue: 180/255,alpha: 1)))}
        }.padding(.vertical,20)
    }
}

