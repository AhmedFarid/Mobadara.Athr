import UIKit

class aboutDes: UIViewController {
    
    var singlItem: item?
    //////////////////////////////////
    //outlets
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var desc: UITextView!
    /////////////////////////////////

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        titleLable.text = singlItem?.itemName!
        desc.text = singlItem?.Des!
        image.image = UIImage(named: (singlItem?.image!)!)
        

    }

    @IBAction func backBTN(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
