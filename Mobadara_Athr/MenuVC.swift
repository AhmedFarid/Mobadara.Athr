import UIKit

class MenuVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
        

    }
    
    
    //Action
    @IBAction func awards(_ sender: Any) {
        let awards = AwardsVC()
        awards.modalPresentationStyle = .custom
        present(awards, animated: true, completion: nil)
        
    }
    
    
    @IBAction func AmbassadorsBtn(_ sender: Any) {
        let ambass = AmbassorVC()
        ambass.modalPresentationStyle = .custom
        present(ambass, animated: true, completion: nil)
    }
    
    
    @IBAction func profileBTN(_ sender: Any) {
        let profile = profileVC()
        profile.modalPresentationStyle = .custom
        present(profile, animated: true, completion: nil)
    }
    
    
    //////////////////////////
}
