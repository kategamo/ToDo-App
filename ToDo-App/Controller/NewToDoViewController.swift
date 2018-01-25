import UIKit

class NewToDoViewController: UIViewController, UITableViewDelegate,UITextFieldDelegate {

    @IBOutlet weak var descriptionView: UITextView!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    @IBOutlet weak var todoField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionView.layer.cornerRadius = 5
        descriptionView.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor
        descriptionView.layer.borderWidth = 1
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector (NewToDoViewController.tapGesture(_:)))
        self.view.addGestureRecognizer(tapRecognizer)
        todoField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController!.navigationBar.tintColor = UIColor.black
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: UIBarButtonItemStyle.plain, target: self, action: #selector(NewToDoViewController.close))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: UIBarButtonItemStyle.plain, target: self, action: #selector(NewToDoViewController.save))
    }
    
    @objc func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func save() {
        let todo = Todo()
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func tapGesture(_ sender: UITapGestureRecognizer) {
        todoField.resignFirstResponder()
        descriptionView.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        todoField.resignFirstResponder()
        return true
    }

}
