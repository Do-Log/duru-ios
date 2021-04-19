//
//  LoginView.swift
//  duru
//
//  Created by 양원준 on 2021/04/06.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView{
            GeometryReader{ geometry in
                VStack(alignment: .leading){
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 0, height: 70, alignment: .leading)
                    Text("함께 쓰는 가계부")
                        .padding(.top, 15)
                        .font(Font.title2.weight(.light))
                    Text("두루")
                        .bold()
                        .padding(.top, 1)
                        .font(.title)
                    
                    Spacer()
                    VStack(alignment: .center){
                        HStack{
                            Image("google-logo")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 20, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("구글 로그인")
                                .font(.system(size: 16))
                        }
                        .padding(.horizontal, 40)
                        .padding(.vertical, 16)
                        .frame(width: geometry.size.width - 100)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color(hex: "#b2b2b2"), lineWidth: 0.5)
                        )
                        
                        HStack{
                            Image("apple-logo")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 20, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Apple 로그인")
                                .font(.system(size: 16))
                        }
                        .padding(.horizontal, 40)
                        .padding(.vertical, 16)
                        .frame(width: geometry.size.width - 100)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color(hex: "#b2b2b2"), lineWidth: 0.5)
                        )
                    }
                    .padding(.bottom, 80)
                    
                }
                .fixedSize(horizontal: true, vertical: false)
                .padding(.horizontal, 50)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
