//
//  ContentView.swift
//  Landmarks
//
//  Created by QiuXc on 2023/8/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // 地图组件
            MapView()
                .frame(height: 300)
            
            // 圆形图片组件
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // 文本描述组件
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.black)
                
                // 横向布局
                // 描述文案
                HStack {
                    Text("Joshua Tree National Park")
                    // 自动撑开剩余空间
                    Spacer()
                    Text("California")
                        
                }
                // 统一为布局中的文本设置样式
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                // 分割线
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            
            // 底部增加占位，自动填充底部空白
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
