//
//  InviteCode.swift
//  duru
//
//  Created by 양원준 on 2021/04/09.
//

import SwiftUI
import Combine

struct InviteCode: View {
    
    //@Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var inviteCode: String = ""
    @State var isButtonActive: Bool = true
    
    var body: some View {
            GeometryReader{ geometry in
                VStack(alignment: .leading){
                    Text("초대권 입력")
                        .font(.title)
                        .padding(.bottom, 1)
                        .padding(.top, 50)
                    
                    Text("받은 초대코드를 입력해 주세요")
                        .padding(.bottom, 80)
                    TextField("초대코드를 입력해주세요", text: $inviteCode)
                        
                        .frame(width: geometry.size.width)
                        .font(.system(size: 20))
                    Divider()
                        .padding(.top, 15)
                        .frame(width: geometry.size.width - 60)
                }
                .fixedSize(horizontal: true, vertical: false)
                .padding(.horizontal, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
                SubmitButton(isButtonActive: self.$isButtonActive)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct InviteCode_Previews: PreviewProvider {
    static var previews: some View {
        InviteCode()
    }
}
