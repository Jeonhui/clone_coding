//
//  LoginView.swift
//  clone_instagram
//
//  Created by 이전희 on 2022/06/22.
//

import SwiftUI

struct LoginView: View {
    
    @State private var id:String = ""
    @State private var password:String = ""
    
    var body: some View{
        NavigationView{
            VStack(spacing:10){
                Divider().opacity(0)
                VStack(alignment: .center, spacing: 10){
                    Image("InstagramLogo")
                        .resizable()
                        .scaledToFit()
                        .padding(.vertical,30)
                        .padding(.horizontal,50)
                    TextField("전화번호, 사용자 이름 또는 이메일",text:$id)
                        .padding()
                        .background(Color.gray.brightness(0.4))
                        .overlay(RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .stroke(Color(UIColor(red: 180/255, green: 180/255, blue: 180/255,alpha: 1)),lineWidth: 1)
                        ).padding(.horizontal,10)
                    SecureField("비밀번호",text:$password)
                        .padding()
                        .background(Color.gray.brightness(0.4))
                        .overlay(RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .stroke(Color(UIColor(red: 180/255, green: 180/255, blue: 180/255,alpha: 1)),lineWidth: 1)
                        ).padding(.horizontal,10)
                        
                    
                    Divider().background(.black).padding(.vertical,30)
                    
                    
                }
                .padding(20)
                .overlay(Rectangle()
                    .stroke(Color(UIColor(red: 180/255, green: 180/255, blue: 180/255,alpha: 1)),lineWidth: 1)
                )
                VStack{
                    Divider().opacity(0)
                    HStack{
                        Text("계정이 없으신가요?")
                        NavigationLink(destination: Text("회원가입")) {
                            Text("가입하기")
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                        }
                        
                    }.padding()
                }.overlay(Rectangle()
                    .stroke(Color(UIColor(red: 180/255, green: 180/255, blue: 180/255,alpha: 1)),lineWidth: 1)
                )
                Spacer()
            }.padding()
        }.navigationBarHidden(true)
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
