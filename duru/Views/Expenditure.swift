//
//  Expenditure.swift
//  duru
//
//  Created by 양원준 on 2021/04/16.
//

import SwiftUI

struct Expenditure: View {
    
    @State var isList: Bool = true
    
    @State var isExpenditure: Bool = false
    @State var price: String = "999,999"
    
    var body: some View {
        GeometryReader{ geometry in
            VStack(alignment: .leading){
                HStack{
                    Text("목록")
                        .font(.system(size: 38))
                        .foregroundColor(Color(hex: self.isList ? "#000000" : "#CCCCCC"))
                    Text("통계")
                        .font(.system(size: 38))
                        .foregroundColor(Color(hex: self.isList ? "#CCCCCC" : "#000000"))
                }
                VStack{
                    HStack{
                        Text("2021.00.00")
                            .font(.system(size: 18))
                            .foregroundColor(Color(hex: "#666666"))
                        VStack{
                            Divider()
                                .background(Color(hex: "#666666"))
                        }
                    }
                    .padding(.vertical, 15)
                    
                    HStack{
                        Text("2021.00.00")
                            .font(.system(size: 18))
                            .foregroundColor(Color(hex: "#666666"))
                        VStack{
                            Divider()
                                .background(Color(hex: "#666666"))
                        }
                    }
                    .padding(.vertical, 15)
                    
                }
                .padding(.top, 40)
            }
            .padding(.horizontal, 30)
        }
        .padding(.top, 50)
    }
}

struct Expenditure_Previews: PreviewProvider {
    static var previews: some View {
        Expenditure()
    }
}
