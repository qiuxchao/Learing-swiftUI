//
//  ContentView.swift
//  c.d
//
//  Created by QiuXc on 2023/10/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(20.0)
                .padding(9)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            
            Text("SwiftUI for IOS 16")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(LinearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            Text("20 sections - 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            Text("Build an Ios app for Ios 16 with custom layout, animations and ...")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
            // foregroundColor 和 foregroundStyle 的区别：
            // foregroundColor 只能设置颜色
            // foregroundStyle 可以设置更多样式，渐变、材质、多种颜色等
            
        }
        .padding(.all, 20.0)
        .padding(.vertical, 20)
        .frame(height: 350.0)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous)) // 这种方式会显示出溢出的内容
//        .cornerRadius(30.0)
//        .clipShape(Circle()) // 不能使用透明度等属性
//        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)) // 使用圆角矩形替代圆角属性，可以设置平滑的圆角，更加符合 iOS 的设计风格
        .shadow(color: Color("Shadow")
            .opacity(0.3), radius: 10, x: 0, y: 10)
        .overlay(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .stroke(
                    .linearGradient(colors: [.white.opacity(0.3), .black.opacity(0.1)], startPoint: .top, endPoint: .bottom)
                )
                .blendMode(.overlay) // 混合模式，使边框与卡片融合
        )
        .padding(.horizontal, 20)
        .background(
            Image("Blob 1")
                .offset(x: 250, y: -100)
        )
        .overlay(
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 230)
                .offset(x: 32, y: -80)
        )
        
        
        // 注意：这里多次调用了 padding
        // 第一次是给 VStack 设置四周 20 的内边距
        // 第二次是给垂直方向再加 20 内边距
        // 第三次会变成外边距（好像是放到背景色后面就会变成外边距）
        
        // background 和 overlay 的区别：
        // background 在下面，overlay 覆盖在上面
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
