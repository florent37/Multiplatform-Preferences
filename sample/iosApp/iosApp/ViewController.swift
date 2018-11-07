import UIKit
import app

class ViewController: UIViewController, MainView {
    
    let presenter: MainPresenter = MainPresenter()
    
    @IBOutlet weak var edit: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func saved(_ sender: Any) {
        if let text = edit.text {
            presenter.save(name: text)
            edit.resignFirstResponder()
        }
    }
    @IBAction func load(_ sender: Any) {
        presenter.load()
    }
    
    func displayName(name: String) {
        label.text = "Saved : "+name
    }
    
    override func viewDidLoad() {
        presenter.bind(view: self)
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        presenter.unbind()
        super.viewDidDisappear(animated)
    }
    
}
