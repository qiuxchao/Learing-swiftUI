//
//  Styles.swift
//  c.d
//
//  Created by QiuXc on 2023/10/14.
//

import SwiftUI

// 自定义样式文件

// 边框样式
struct StrokeStyle: ViewModifier {
    var cornerRadius:CGFloat
    // 读取用户设置 light 或 dark 模式
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .stroke(
                    .linearGradient(
                        colors: [
                            .white.opacity(colorScheme == .dark ? 0.6 : 0.3),
                            .black.opacity(colorScheme == .dark ? 0.3 : 0.1)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .blendMode(.overlay) // 混合模式，使边框与卡片融合
        )
    }
}


// 给 View 扩展方法
extension View {
    // 以修饰符的形式设置圆角
    func strokeStyle(cornerRadius: CGFloat = 30) -> some View {
        modifier(StrokeStyle(cornerRadius: cornerRadius))
    }
}
