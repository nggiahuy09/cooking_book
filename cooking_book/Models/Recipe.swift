//
//  Recipe.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 1/4/26.
//

import Foundation

struct Recipe: Identifiable, Codable {

    let id: String
    let image: String
    let name: String
    let instructions: String
    let time: Int
    let createAt: Date

    init(id: String, name: String, image: String, instructions: String, time: Int) {
        self.id = id
        self.name = name
        self.image = image
        self.instructions = instructions
        self.time = time
        self.createAt = Date()
    }
}

extension Recipe {

    static var mockReceipes = [
        Recipe(
            id: UUID().uuidString,
            name: "Phở Bò",
            image: "pho",
            instructions: "Để nấu phở bò, trước tiên bạn cần ninh xương bò trong nhiều giờ để lấy nước dùng ngọt tự nhiên. Thêm gừng nướng, hành nướng, quế, hồi, thảo quả để tạo mùi thơm đặc trưng. Luộc bánh phở, xếp vào tô cùng thịt bò thái mỏng. Chan nước dùng nóng lên trên để thịt chín tái. Thêm hành lá, ngò gai và ăn kèm giá, chanh, ớt.",
            time: 180
        ),
        Recipe(
            id: UUID().uuidString,
            name: "Bún Bò Huế",
            image: "bunbo",
            instructions: "Hầm xương bò và giò heo để lấy nước dùng. Thêm sả đập dập, mắm ruốc Huế để tạo hương vị đặc trưng. Nêm nếm vừa ăn. Trụng bún, cho thịt bò, giò heo vào tô rồi chan nước dùng. Ăn kèm rau sống, chanh và ớt.",
            time: 120
        ),
        Recipe(
            id: UUID().uuidString,
            name: "Cơm Tấm Sườn",
            image: "comtam",
            instructions: "Ướp sườn heo với nước mắm, tỏi, đường và tiêu rồi nướng hoặc chiên. Nấu cơm tấm. Khi ăn, dọn cơm ra đĩa, thêm sườn nướng, bì, chả trứng và chan nước mắm chua ngọt. Ăn kèm dưa leo, cà chua.",
            time: 45
        ),
        Recipe(
            id: UUID().uuidString,
            name: "Bánh Mì Việt Nam",
            image: "banhmi",
            instructions: "Cắt bánh mì, phết pate, thêm thịt nguội hoặc thịt nướng. Cho dưa leo, đồ chua (cà rốt, củ cải), rau mùi và ớt. Chan một ít nước sốt hoặc nước tương rồi kẹp lại.",
            time: 15
        ),
        Recipe(
            id: UUID().uuidString,
            name: "Gỏi Cuốn",
            image: "goicuon",
            instructions: "Luộc tôm và thịt ba chỉ. Ngâm bánh tráng cho mềm, sau đó cuốn với bún, rau sống, tôm và thịt. Chấm với nước mắm chua ngọt hoặc tương đậu phộng.",
            time: 20
        ),
        Recipe(
            id: UUID().uuidString,
            name: "Bánh Xèo",
            image: "banhxeo",
            instructions: "Pha bột bánh xèo với bột gạo, nước cốt dừa và nghệ. Đổ bột vào chảo nóng, thêm tôm, thịt và giá đỗ. Chiên đến khi giòn. Gập bánh lại và ăn kèm rau sống, chấm nước mắm.",
            time: 30
        ),
        Recipe(
            id: UUID().uuidString,
            name: "Canh Chua Cá",
            image: "canhchua",
            instructions: "Nấu nước với me tạo vị chua. Thêm cá, cà chua, dứa, bạc hà và đậu bắp. Nêm nếm với nước mắm, đường cho vừa vị. Cuối cùng thêm rau thơm như ngò om, rau quế.",
            time: 35
        ),
        Recipe(
            id: UUID().uuidString,
            name: "Thịt Kho Tàu",
            image: "thitkho",
            instructions: "Thắng nước màu từ đường, sau đó cho thịt ba chỉ vào đảo đều. Thêm trứng luộc, nước dừa và nấu liu riu cho đến khi thịt mềm. Nêm nước mắm cho đậm đà.",
            time: 90
        )
    ]
}
