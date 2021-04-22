//
//  NewExpenditure.swift
//  duru
//
//  Created by 양원준 on 2021/04/22.
//

import SwiftUI

struct NewExpenditure: View {
    
    @State var isExpend: Bool = true
    
    var body: some View {
        GeometryReader{ geometry in
            VStack(alignment: .leading){
                Text("추가될 내역의 종류를 선택해주세요")
                    .foregroundColor(Color(hex: "#666666"))
                    .font(.system(size: 14))
                    .padding(.bottom, 16)
                HStack{
                    Button(action: {
                        self.isExpend = true
                    }, label: {
                        Text("지출")
                            .foregroundColor(Color(hex: !isExpend ? "#CCCCCC" : "#000000"))
                            .font(.system(size: 23))
                            .fontWeight(!isExpend ? .regular : .bold)
                    })
                    Button(action: {
                        self.isExpend = false
                    }, label: {
                        Text("수입")
                            .foregroundColor(Color(hex: isExpend ? "#CCCCCC" : "#000000"))
                            .font(.system(size: 23))
                            .fontWeight(isExpend ? .regular : .bold)
                    })
                }
                HStack{
                    Text("누가?")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.top, 40)
                HStack{
                    Text("날짜 및 시간")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    Spacer()
                    Text("2021.04.00 00:00")
                }
                .padding(.top, 40)
                HStack{
                    Text("금액")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    Spacer()
                    Text("0 원")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                }
                .padding(.top, 40)
                Text("내역")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .padding(.top, 40)
            }
            .padding(.horizontal, 30)
        }
    }
}

struct NewExpenditure_Previews: PreviewProvider {
    static var previews: some View {
        NewExpenditure()
    }
}
