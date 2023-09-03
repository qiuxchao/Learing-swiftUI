//
//  LandmarkList.swift
//  Landmarks
//
//  Created by QiuXc on 2023/9/3.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // 动态渲染列表，列表结构有 Identifiable 协议时不需要指定第二个参数 id（唯一标识）
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
