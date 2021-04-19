//
//  ExpenditureItem.swift
//  duru
//
//  Created by 양원준 on 2021/04/16.
//

import SwiftUI

struct ExpenditureItem: View {
    
    @Binding var isExpenditure: Bool
    @Binding var price: String
    
    var body: some View {
        HStack{
            Text("")
                .frame(width: 36, height: 36)
                .background(RoundedRectangle(cornerRadius: 18).fill(Color(hex: "#E9E9E9")))
                
            Text("텍스트")
                .foregroundColor(Color(hex: "#666666"))
                .font(.system(size: 20))
            Spacer()
            Text("\(price)원")
                .foregroundColor(Color(hex: self.isExpenditure ? "#000000" : "#567FD1"))
                .font(.system(size: 22))
                .fontWeight(.semibold)
        }
    }
}
