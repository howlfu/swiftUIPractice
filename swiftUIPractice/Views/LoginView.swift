//
//  ContentView.swift
//  swiftUIPratice
//
//  Created by Howlfu on 2022/8/17.
//

import SwiftUI

struct LoginView: View {
    @State private var account: String = ""
    @State private var password: String = ""
    @State private var isLinkActive = false
    @State private var swhoWarn: Bool = false
    @State private var contPadding: CGFloat = 20
    var body: some View {
        NavigationView {
            VStack(){
                Spacer()
                VStack(alignment: .center, spacing: 0) {
                    Text("登入")
                        .padding(.top, 16)
                        .padding(.bottom ,20)
                        .foregroundColor(.primary)
                    Group{
                        HStack(spacing: 15){
                            Text("帳號")
                                .foregroundColor(.primary)
                            TextField("您的名字", text: $account, prompt: Text("你的名字"))
                                .textFieldStyle(.roundedBorder)
                                .foregroundColor(.primary)
                        }
                        if swhoWarn {
                            Text("帳密錯誤").foregroundColor(.red)
                        }
                        HStack(spacing: 15){
                            Text("密碼")
                                .foregroundColor(.primary)
                            TextField("您的密碼", text: $password, prompt: Text("輸入密碼"))
                                .textFieldStyle(.roundedBorder)
                                .foregroundColor(.primary)
                        }
                    }
                    .frame(width: 200, height: 20
                            , alignment: .center)
                    .padding(.bottom , contPadding)
                    .onTapGesture {
                        hideWarn()
                    }
                    HStack {
                            Spacer()
                            
                            NavigationLink(destination: Screen2(), isActive: $isLinkActive) {
                                Button(action: {
                                    loginLaunch()
                                }, label: {
                                    Text("登入")
                                        .foregroundColor(.white)
                                        .frame(minWidth:80)
                                        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).foregroundColor(.brown))
                                })
                                    .padding(.bottom, 16)
                                    .padding(.trailing, 40)
                            }
                        }
                } //login view
                .frame(width: 280, height: 200)
                .background(Color(uiColor: .systemGray4))
                .cornerRadius(15)
                .dynamicTypeSize(.xSmall ... .accessibility2)
                Spacer()
            }//background
            .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  minHeight: 0,
                  maxHeight: .infinity,
                  alignment: .center
                )
            .background(LinearGradient(gradient: Gradient(colors: [Color(uiColor: .systemCyan), Color.blue]), startPoint: .leading, endPoint: .trailing))
        }
    }
    
    private func loginLaunch() {
        if account == "123" && password == "456" {
            isLinkActive = true
        } else {
            isLinkActive = false
            showWarn()
        }
    }
    
    private func showWarn() {
        contPadding = 10
        swhoWarn = true
    }
    
    private func hideWarn() {
        contPadding = 20
        swhoWarn = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
                .environment(\.sizeCategory, .large)
.previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
