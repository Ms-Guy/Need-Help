//
//  Model.swift
//  Dota2AutoChess
//
//  Created by Kien Master on 1/6/20.
//  Copyright © 2020 Trung Kien. All rights reserved.
//

import Foundation
class BuffData{
    var id:Int = 0
    var name:String = ""
    var des:[String] = [""]
    var image:String = ""
    var position : Position?
    init(data:[String:Any]) {
        id = data["id"] as? Int ?? 0
        name = data["name"] as? String ?? ""
        des = data["des"] as? [String] ?? [""]
        image = data["image"] as? String ?? ""
    }
    
}
class ListData{
    var id:Int = 0
    var list:[Int] = [0]
    var name:String = ""
    init(data:[String:Any]) {
        id = data["id"] as? Int ?? 0
        name = data["name"] as? String ?? ""
        list = data["list"] as? [Int] ?? [0]
    }
}
class HeroData{
    var id:Int = 0
    var name:String = ""
    var avatar:String = ""
    var cost:String = ""
    var avatarPosition : AvatarPosition?
    var ability : [Ability]?
    var stats : [Stats] = [Stats]()
    var statsMap : StatsMap?
    var races:[String] = [""]
    init(data:[String:Any]) {
        id = data["id"] as? Int ?? 0
        name = data["name"] as? String ?? ""
        avatar = data["avatar"] as? String ?? ""
        cost = data["cost"] as? String ?? ""
        races = data["races"] as? [String] ?? [""]
    }
}
class Position{
    var x:Int = 0
    var y:Int = 0
    var w:Int = 0
    var h:Int = 0
    init(data:[String:Int]) {
        x = data["x"] ?? 0
        y = data["y"] ?? 0
        w = data["w"] ?? 0
        h = data["h"] ?? 0
    }
}
class AvatarPosition{
    var x:Int = 0
      var y:Int = 0
      var w:Int = 0
      var h:Int = 0
      init(data:[String:Int]) {
          x = data["x"] ?? 0
          y = data["y"] ?? 0
          w = data["w"] ?? 0
          h = data["h"] ?? 0
      }
}
class Ability {
    var name:String = ""
    var des:String = ""
    var cooldown:String = ""
    var image:String = ""
    var position : Position?
    init(data:[String:Any]) {
        name = data["name"] as? String ?? ""
        des = data["des"] as? String ?? ""
        cooldown = data["cooldown"] as? String ?? ""
        image = data["image"] as? String ?? ""
    }
}
class  Stats {
    var name:String = ""
    var des:String = ""
    var value:[String] = [""]
    init(data:[String:Any]) {
        name = data["name"] as? String ?? ""
        des = data["des"] as? String ?? ""
        value = data["value"] as? [String] ?? [""]
    }
}
class StatsMap{
    var damage:[String] = [""]
    var hP:[String] = [""]
    var magicResistance:[String] = [""]
    var attackRate:[String] = [""]
    var averageDPS:[String] = [""]
    var amor:[String] = [""]
    init(data:[String:Any]) {
        damage = data["Damage"] as? [String] ?? [""]
        hP = data["HP"] as? [String] ?? [""]
        attackRate = data["AttackRate"] as? [String] ?? [""]
        averageDPS = data["AverageDPS"] as? [String] ?? [""]
        amor = data["Amor"] as? [String] ?? [""]
    }
}
