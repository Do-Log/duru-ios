//
//  ExpenditureDetail.swift
//  duru
//
//  Created by 양원준 on 2021/04/17.
//

import SwiftUI

struct ExpenditureDetail: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack(alignment: .leading){
                HStack(){
                    Text("이름")
                        .font(.system(size: 20))
                        .foregroundColor(Color(hex: "#000000"))
                }
                .padding(.bottom, 20)
                Text("메모한 내용")
                    .fontWeight(.bold)
                    .font(.system(size: 34))
                Divider()
                HStack{
                    Text("날짜 및 시간")
                    Spacer()
                    Text("2021.00.00 00:00")
                }
                .padding(.top, 20)
                HStack{
                    Text("금액")
                    Spacer()
                    Text("130,000 원")
                        .fontWeight(.bold)
                }
                .padding(.top, 20)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {

                })
                .frame(maxWidth: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 0)
                        .overlay(
                            Text("확인")
                                .foregroundColor(Color(hex: "#FFFFFF"))
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 18)
                                .background(Color(hex: "#9ABCFF"))
                        )
                        .padding(.bottom, 50)
                        
                )
            }
            .padding(.horizontal, 30)
        }
    }
}

struct ExpenditureDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExpenditureDetail()
    }
}
