//
//  SubmitButton.swift
//  duru
//
//  Created by 양원준 on 2021/04/16.
//

import SwiftUI

struct SubmitButton: View {
    
    @Binding var isButtonActive: Bool
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("확인")
                        .foregroundColor(Color(hex: self.isButtonActive ? "#ffffff" : "#878787"))
                        .font(.system(size: 20))
                })
                .frame(width: geometry.size.width, height: 65, alignment: .center)
                .background(Color(hex: self.isButtonActive ? "#9abcff" : "#e8e8e8"))
            }
        }
    }
}
