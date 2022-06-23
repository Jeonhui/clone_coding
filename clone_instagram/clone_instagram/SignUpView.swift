//
//  SignUpView.swift
//  clone_instagram
//
//  Created by 이전희 on 2022/06/23.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var BackButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Text("닫기") 
            }
        }
    }
    
    var body: some View {
        VStack{
            Text("회원가입이양")
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("회원가입")
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
