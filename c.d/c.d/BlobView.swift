//
//  BlobView.swift
//  c.d
//
//  Created by QiuXc on 2023/10/15.
//

import SwiftUI

struct BlobView: View {
    var body: some View {
        // 使用 Shape 绘制
        //        BlobShape()
        //            .frame(width: 258, height: 188.52)
        //            .foregroundStyle(.linearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
        
        // 使用 Canvas 绘制
        Canvas { context, size in
            context.fill(
                path(
                    in: CGRect(x: 0, y: 0, width: size.width, height: size.height)),
                with: .linearGradient(
                    Gradient(colors: [.pink, .blue]),
                    startPoint: CGPoint(x: 0, y: 0),
                    endPoint: CGPoint(x: 258, y: 188.52)
                )
            )
        }
        .frame(width: 258, height: 188.52)
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.53044*height))
        path.addCurve(to: CGPoint(x: 0.88178*width, y: 0.90705*height), control1: CGPoint(x: width, y: 0.70987*height), control2: CGPoint(x: 0.97226*width, y: 0.78946*height))
        path.addCurve(to: CGPoint(x: 0.36628*width, y: 0.99723*height), control1: CGPoint(x: 0.7913*width, y: 1.02464*height), control2: CGPoint(x: 0.50435*width, y: 0.99723*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.53044*height), control1: CGPoint(x: 0.09014*width, y: 0.99723*height), control2: CGPoint(x: 0, y: 0.88931*height))
        path.addCurve(to: CGPoint(x: 0.18605*width, y: 0.183*height), control1: CGPoint(x: 0, y: 0.351*height), control2: CGPoint(x: 0.07522*width, y: 0.29728*height))
        path.addCurve(to: CGPoint(x: 0.56008*width, y: 0), control1: CGPoint(x: 0.29688*width, y: 0.06873*height), control2: CGPoint(x: 0.42201*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.88178*width, y: 0.14057*height), control1: CGPoint(x: 0.72093*width, y: 0), control2: CGPoint(x: 0.81734*width, y: 0.02629*height))
        path.addCurve(to: CGPoint(x: width, y: 0.53044*height), control1: CGPoint(x: 0.94622*width, y: 0.25484*height), control2: CGPoint(x: width, y: 0.351*height))
        path.closeSubpath()
        return path
    }
}

struct BlobView_Previews: PreviewProvider {
    static var previews: some View {
        BlobView()
    }
}

struct BlobShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.53044*height))
        path.addCurve(to: CGPoint(x: 0.88178*width, y: 0.90705*height), control1: CGPoint(x: width, y: 0.70987*height), control2: CGPoint(x: 0.97226*width, y: 0.78946*height))
        path.addCurve(to: CGPoint(x: 0.36628*width, y: 0.99723*height), control1: CGPoint(x: 0.7913*width, y: 1.02464*height), control2: CGPoint(x: 0.50435*width, y: 0.99723*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.53044*height), control1: CGPoint(x: 0.09014*width, y: 0.99723*height), control2: CGPoint(x: 0, y: 0.88931*height))
        path.addCurve(to: CGPoint(x: 0.18605*width, y: 0.183*height), control1: CGPoint(x: 0, y: 0.351*height), control2: CGPoint(x: 0.07522*width, y: 0.29728*height))
        path.addCurve(to: CGPoint(x: 0.56008*width, y: 0), control1: CGPoint(x: 0.29688*width, y: 0.06873*height), control2: CGPoint(x: 0.42201*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.88178*width, y: 0.14057*height), control1: CGPoint(x: 0.72093*width, y: 0), control2: CGPoint(x: 0.81734*width, y: 0.02629*height))
        path.addCurve(to: CGPoint(x: width, y: 0.53044*height), control1: CGPoint(x: 0.94622*width, y: 0.25484*height), control2: CGPoint(x: width, y: 0.351*height))
        path.closeSubpath()
        return path
    }
}
