//
//  MainView.swift
//  duru
//
//  Created by 양원준 on 2021/04/09.
//

import SwiftUI
import PartialSheet

struct MainView: View{
    
    @State private var modalPresented = false
    @EnvironmentObject var partialSheetManager: PartialSheetManager
    
    var body: some View {
        NavigationView{
            GeometryReader{ geometry in
                VStack(alignment: .leading){
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30, alignment: .leading)
                        .padding(.bottom, 30)
                    Form{
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: 130)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color(hex: "#f3f3f3"), lineWidth: 0.5)
                            .background(Color(hex: "#f3f3f3"))
                            .overlay(
                                VStack{
                                    Image("plus")
                                        .frame(width: 20, height: 20, alignment: .center)
                                        .padding(.bottom, 10)
                                    Text("새로운 가계부 작성")
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .background(Color(hex: "#f3f3f3"))
                                        .font(Font.body.weight(.light))
                                }
                                .onTapGesture {
                                    partialSheetManager.showPartialSheet(){
                                        VStack{
                                            Group{
                                                Text("새로운 가계부를 만들 거에요")
                                                    .padding()
                                                Text("초대코드가 있어요")
                                                    .padding()
                                            }
                                            .frame(height: 100)
                                        }
                                    }
                                }
                            )
                    )
                    
                }
                .padding(.horizontal, 30)
            }
        }
        .navigationBarHidden(true)
        .addPartialSheet()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
