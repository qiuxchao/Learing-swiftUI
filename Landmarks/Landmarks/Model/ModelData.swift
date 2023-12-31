//
//  ModelData.swift
//  Landmarks
//
//  Created by QiuXc on 2023/9/3.
//

import Foundation
import Combine

// final 关键字：表示它是最终的，不能被继承或重写
final class ModelData: ObservableObject {
    // 从 JSON 中读取地标数组
    // 可观察对象需要发布对其数据的任何更改，以便其订阅者可以获取更改。
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}


// 从应用的主捆绑包中获取具有给定名称的 JSON 数据
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // 如果文件不存在，则抛出错误
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    // 读取 JSON 文件
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    // 解析 JSON 数据并返回
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
