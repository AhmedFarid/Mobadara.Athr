import UIKit

class about: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var itemList = Array<item>()
    
    
    //outlets
    @IBOutlet weak var aboutCollectionView: UICollectionView!
    @IBOutlet weak var menuBTN: UIButton!
    //////////////////////////////////////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readFromBlist()
        
        //menuBtn call
        menuBTN.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        //////////////////////////////////
        
    }

    //collectionView SetUp
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:aboutCell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! aboutCell
        cell.lable.text = itemList[indexPath.row].itemName!
        cell.image.image = UIImage(named: itemList[indexPath.row].image!)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDesc", sender: itemList[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let way = segue.destination as? aboutDes{
            if let item = sender as? item{
                way.singlItem = item
            }
        }
    }
    
    
    /////////////////////////////////////
    //Funcs
    func readFromBlist() {
        let path = Bundle.main.path(forResource: "items", ofType: "plist")!
        let url = URL(fileURLWithPath: path)
        let data = try! Data(contentsOf: url)
        let plist = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil)
        let dicArray = plist as! [[String:String]]
        for dic in dicArray {
            itemList.append(item(itemName: dic["Name"]!, Des: dic["Desc"]!, image: dic["Image"]!))
        }
        
        
    }
    /////////////////////////////////////
    
    
    
}
