//
//  ViewController.swift
//  Laborator2
//
//  Created by user216460 on 8/31/22.
//

import UIKit

protocol ViewControllerType : AnyObject{
    func doSomething()
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        // Do any additional setup after loading the view.
    }
    
    func configure(){
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func navigate(){
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "ViewController2") else{return}
        //viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true, completion: nil)
    }
    


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuse",for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //doSomething()
        navigate()
    }

}

extension ViewController:ViewControllerType{
    func doSomething(){
        print("here2")
    }
}
