//
//  LandmarkList.swift
//  Landmarks
//
//  Created by QiuXc on 2023/9/3.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    // 筛选后的列表
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationView{
            // 动态渲染列表，列表结构有 Identifiable 协议时不需要指定第二个参数 id（唯一标识）
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        // 指定多个预览设备
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                    LandmarkList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
                }

    }
}
