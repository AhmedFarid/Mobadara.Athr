import UIKit

class AwardsVC: UIViewController {

    @IBOutlet weak var bgView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissTheView()

    }

    @IBAction func closeBTn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func dismissTheView(){
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AwardsVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }

}
