//
//  ViewController.swift
//  My Annotations
//
//  Created by Rafael Goncalves on 26/05/2018.
//  Copyright © 2018 BlessCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoCampo: UITextView!
    let chave = "minhaAnotacao"
    @IBAction func salvarAnotacao(_ sender: Any) {
        
        if let texto = textoCampo.text{
            
            UserDefaults.standard.set(texto, forKey: chave)
            
        }
        
    }
    
    func recuperaAnotacao() -> String {
        
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
            return textoRecuperado as! String
            //return String(textoRecuperado)
            
        }
        
        return ""
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textoCampo.text = recuperaAnotacao()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

