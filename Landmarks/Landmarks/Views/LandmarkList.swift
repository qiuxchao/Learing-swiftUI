//
//  LandmarkList.swift
//  Landmarks
//
//  Created by QiuXc on 2023/9/3.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    // 筛选后的列表
    var filteredLandmarks: [Landmark] {
        // 使用响应式数据
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationView{
            List() {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                // 动态渲染列表，列表结构有 Identifiable 协议时不需要指定第二个参数 id（唯一标识）
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
