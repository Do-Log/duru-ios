//
//  NewBook.swift
//  duru
//
//  Created by 양원준 on 2021/04/13.
//

import SwiftUI

struct NewBook: View {
    
    @State var bookname: String = ""
    @State var isButtonActive: Bool = false
    
    var body: some View {
        GeometryReader{ geometry in
            VStack(alignment: .leading){
                Text("새 가계부 생성")
                    .font(.title)
                    .padding(.top, 50)
                Text("색상")
                    .font(.title3)
                    .padding(.vertical, 30)
                Group{
                    Text("이름")
                        .padding(.bottom, 10)
                        .font(.title3)
                    TextField("가계부 이름을 입력해주세요.", text: $bookname)
                        .frame(width: geometry.size.width)
                        .font(.system(size: 20))
                    Divider()
                        .padding(.top, 10)
                        .frame(width: geometry.size.width - 60)
                }
                
                Group{
                    Text("한줄 목표")
                        .padding(.bottom, 10)
                        .font(.title3)
                        .padding(.top, 50)
                    TextField("선택 사항 ex. 내집마련, 여행가자", text: $bookname)
                        .frame(width: geometry.size.width)
                        .font(.system(size: 20))
                    Divider()
                        .padding(.top, 10)
                        .frame(width: geometry.size.width - 60)
                }
                SubmitButton(isButtonActive: self.$isButtonActive)
            }
            .padding(.horizontal, 30)
        }
    }
}

struct NewBook_Previews: PreviewProvider {
    static var previews: some View {
        NewBook()
    }
}
