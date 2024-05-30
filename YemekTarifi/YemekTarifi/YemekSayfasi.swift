//
//  YemekSayfasi.swift
//  YemekTarifi
//
//  Created by Furkan on 30.05.2024.
//

import SwiftUI

struct YemekSayfasi: View {
    var body: some View {
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width
            let ekranYukseklik = geometry.size.height
            VStack{
                Image("yemekresim").resizable().frame(width: ekranGenislik,height: ekranYukseklik/3)
                VStack(alignment: .leading){
                    Text("Köfte").font(.system(size: 30))
                        .foregroundStyle(.red)
                    HStack{
                        Text("Izgaraya Uygun")
                        Spacer()
                        Text("10 Ocak")
                        
                    }
                }.padding()
                Text("Köfte harcını hazırlamak için, soğanları rendeleyin ve maydanozları ince ince kıyın. İsterseniz bir diş sarımsak da ekleyebilirsiniz.")
                    .multilineTextAlignment(.center).padding()
                Spacer()
                HStack(spacing: 0){
                    Button("Beğen"){
                        
                    }.foregroundColor(.black)
                        .frame(width: ekranGenislik/2, height: ekranYukseklik/10)
                        .background(.yellow)
                    
                    Button("Yorum Yap"){
                        
                    }.foregroundColor(.black)
                        .frame(width: ekranGenislik/2, height: ekranYukseklik/10)
                        .background(.orange)
                }
            }
        }
    }
}

#Preview {
    YemekSayfasi()
}
