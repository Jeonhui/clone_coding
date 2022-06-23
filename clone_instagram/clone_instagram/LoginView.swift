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
    @State private var loginDisabled:Bool = true
    
    var body: some View{
        NavigationView{
            VStack(spacing:10){
                Divider().opacity(0)
                VStack(alignment: .center, spacing: 10){
                    // Logo
                    Image("InstagramLogo")
                        .resizable()
                        .scaledToFit()
                        .padding(.vertical,30)
                        .padding(.horizontal,50)
                    
                    
                    // FaceBook
                    NavigationLink(destination: Text("facebook")) {
                        Spacer()
                        Image("facebook")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .scaledToFit()
                        Text("Facebook으로 계속하기")
                            .font(.system(size: 15))
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.vertical,10)
                    .foregroundColor(.white)
                    .background(Color(UIColor(red: 0/255, green: 153/255, blue: 255/255,alpha: 1)))
                    .cornerRadius(5)
                    .padding(.horizontal,10)
                    
                    // divider
                    custom_divider(text: "또는")
                    
                    // ID, Password
                    VStack{
                        TextField("전화번호, 사용자 이름 또는 이메일",text:$id)
                            .padding()
                            .background(Color.gray.brightness(0.4))
                            .overlay(RoundedRectangle(cornerRadius: 5, style: .continuous)
                                .stroke(Color(UIColor(red: 180/255, green: 180/255, blue: 180/255,alpha: 1)),lineWidth: 1)
                            ).onChange(of: id) { newValue in
                                if (newValue != "" && self.password != ""){
                                    self.loginDisabled = false
                                }else{
                                    self.loginDisabled = true
                                }
                            }
                        SecureField("비밀번호",text:$password)
                            .padding()
                            .background(Color.gray.brightness(0.4))
                            .overlay(RoundedRectangle(cornerRadius: 5, style: .continuous)
                                .stroke(Color(UIColor(red: 180/255, green: 180/255, blue: 180/255,alpha: 1)),lineWidth: 1)
                            ).onChange(of: password) { newValue in
                                if (newValue != "" && self.id != ""){
                                    self.loginDisabled = false
                                }else{
                                    self.loginDisabled = true
                                }
                            }
                        HStack{
                            Spacer()
                            NavigationLink {
                                Text("비밀번호 찾기")
                            } label: {
                                Text("비밀번호를 잊으셨나요?")
                            }
                        }
                        
                        NavigationLink(destination: Text("login")) {
                            Spacer()
                            Text("로그인")
                                .font(.system(size: 15))
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.vertical,10)
                        .foregroundColor(.white)
                        .background(Color(UIColor(red: 0/255, green: 153/255, blue: 255/255,alpha: 1)))
                        .cornerRadius(5)
                        .padding(5)
                        .disabled(loginDisabled)
                        .opacity(loginDisabled ? 0.5 : 1)
                    }.padding(.horizontal,10)
                    
                }
                
                //계정 가입
                VStack{
                    Divider().opacity(0)
                    HStack{
                        Text("계정이 없으신가요?")
                        NavigationLink(destination: SignUpView()) {
                            Text("가입하기")
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                        }
                        
                    }.padding()
                }
                Spacer()
            }.padding(30)
        }.navigationBarHidden(true)
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
