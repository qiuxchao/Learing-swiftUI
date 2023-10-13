//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by QiuXc on 2023/9/3.
//

import SwiftUI

struct LandmarkDetail: View {
    // 接收 Store 数据
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            // 地图组件
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            // 圆形图片组件
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // 文本描述组件
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.black)
                    
                    // 收藏按钮 $ 符号用于双向绑定
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
               
                // 横向布局
                // 描述文案
                HStack {
                    Text(landmark.park)
                    // 自动撑开剩余空间
                    Spacer()
                    Text(landmark.state)
                        
                }
                // 统一为布局中的文本设置样式
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                // 分割线
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }.padding()
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    // 注入环境数据（全局 Store）
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
