//
//  ViewController.swift
//  Dota2AutoChess
//
//  Created by Kien Master on 1/6/20.
//  Copyright © 2020 Trung Kien. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var listBuff = [BuffData]()
    var listData = [ListData]()
    var listHero = [HeroData]()
    var urlBuff = Bundle.main.path(forResource: "buff", ofType: "json")
    var urlData = Bundle.main.path(forResource: "data", ofType: "json")
    var urlHero = Bundle.main.path(forResource: "hero", ofType: "json")
    @IBOutlet weak var myColletionView: UICollectionView!
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        myTableView.register(UINib(nibName: "ExpandCell", bundle: nil), forCellReuseIdentifier: "ExpandCell")
        myColletionView.register(UINib(nibName:"CollectionViewCell",bundle:nil), forCellWithReuseIdentifier:"CollectionViewCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        myColletionView.delegate = self
        myColletionView.dataSource = self
        self.view.backgroundColor = UIColor(named: "wallpaper4")
        downloadJson()
    }
    func downloadJson(){
        do{
            let data = try Data(contentsOf: URL(fileURLWithPath: urlBuff!) )
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            let listD = json as! [[String:Any]]
            var listResult:[BuffData] = [BuffData]()
            for buff in listD{
                let obj:BuffData = BuffData(data: buff)
                listResult.append(obj)
            }
            self.listBuff = listResult
            DispatchQueue.main.async {
                self.myTableView.reloadData()
            }
        }catch{
            print("error buff data")
        }
     do{
          let data = try Data(contentsOf: URL(fileURLWithPath: urlData!) )
          let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
          let listD = json as! [[String:Any]]
          var listResult:[ListData] = [ListData]()
          for buff in listD{
              let obj:ListData = ListData(data: buff)
              listResult.append(obj)
          }
          self.listData = listResult
          DispatchQueue.main.async {
              self.myTableView.reloadData()
          }
      }catch{
          print("error data")
      }
        do{
             let data = try Data(contentsOf: URL(fileURLWithPath: urlHero!) )
             let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
             let listD = json as! [[String:Any]]
             var listResult:[HeroData] = [HeroData]()
             for buff in listD{
                 let obj:HeroData = HeroData(data: buff)
                 listResult.append(obj)
             }
             self.listHero = listResult
             DispatchQueue.main.async {
                 self.myTableView.reloadData()
             }
         }catch{
             print("error heroes data")
         }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listHero.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.lblHeroesName.text = "\(listHero[indexPath.row].name)"
        cell.lblHeroesRaces.text = "\(listHero[indexPath.row].races)"
        cell.lblHeroesCost.text = "\(listHero[indexPath.row].cost)"
        let imageBuff = Bundle.main.urls(forResourcesWithExtension: "png", subdirectory: "Assets/images")
        cell.imgAvatar.image = UIImage(data: NSData(contentsOf: imageBuff))
        return cell
    }
        override func viewWillAppear(_ animated: Bool) {
            myTableView.estimatedRowHeight = 100
           myTableView.rowHeight = UITableView.automaticDimension
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listBuff.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = myColletionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
        return collectionCell!
    }

}
