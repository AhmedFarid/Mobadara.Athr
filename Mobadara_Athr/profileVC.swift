import UIKit

class profileVC: UIViewController {

    
    //outLets
    @IBOutlet weak var image: CircleImage!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var bgView: UIView!
    //////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissTheView()
        
        
        
        

    }
    
    
    
    
    //Actions
    
    @IBAction func cancelBTN(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logOutBtn(_ sender: Any) {
        
    }
    
    //////////////////////////////////
    
    //dismiss View Funcs
    func dismissTheView(){
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(profileVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
   @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    //////////////////////////////////
}
