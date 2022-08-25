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
    var body: some View {
        VStack(){
            Spacer()
            VStack(alignment: .center, spacing: 0) {
                Text("登入")
                    .padding(.top, 16)
                    .foregroundColor(.primary)
                Group{
                    HStack(spacing: 15){
                        Text("帳號")
                            .foregroundColor(.primary)
                        TextField("您的名字", text: $account, prompt: Text("你的名字"))
                            .textFieldStyle(.roundedBorder)
                            .foregroundColor(.primary)
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
                .padding(20)
                HStack {
                    Spacer()
                    Button(action: loginButtAct, label: {
                        Text("登入")
                            .foregroundColor(.white)
                            .frame(minWidth:80)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).foregroundColor(.brown))
                    })
                        .padding(.bottom, 16)
                        .padding(.trailing, 40)
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
    
    private func loginButtAct() {
        
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
