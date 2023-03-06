//
//  ViewController.swift
//  JHK Wanted PreOnboarding
//
//  Created by HUN on 2023/03/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    
    @IBOutlet weak var progress1: UIProgressView!
    @IBOutlet weak var progress2: UIProgressView!
    @IBOutlet weak var progress3: UIProgressView!
    @IBOutlet weak var progress4: UIProgressView!
    @IBOutlet weak var progress5: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progress1.progress = 0.0
        progress2.progress = 0.0
        progress3.progress = 0.0
        progress4.progress = 0.0
        progress5.progress = 0.0
        
    }

    @IBAction func loadButton1(_ sender: Any) {
        progress1.progress = 0.0
        imageView1.image = UIImage(systemName: "folder.circle.fill")
        let url = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png")
        imageView1.load(url: url!) {
            self.progress1.progress = 1.0
        }
    }
    
    @IBAction func loadButton2(_ sender: Any) {
        progress2.progress = 0.0
        imageView2.image = UIImage(systemName: "folder.circle.fill")
        let url = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png")
        imageView2.load(url: url!) {
            self.progress2.progress = 1.0
        }
    }
    
    @IBAction func loadButton3(_ sender: Any) {
        progress3.progress = 0.0
        imageView3.image = UIImage(systemName: "folder.circle.fill")
        let url = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png")
        imageView3.load(url: url!) {
            self.progress3.progress = 1.0
        }
    }
    
    @IBAction func loadButton4(_ sender: Any) {
        progress4.progress = 0.0
        imageView4.image = UIImage(systemName: "folder.circle.fill")
        let url = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png")
        imageView4.load(url: url!) {
            self.progress4.progress = 1.0
        }
    }
    
    @IBAction func loadButton5(_ sender: Any) {
        progress5.progress = 0.0
        imageView5.image = UIImage(systemName: "folder.circle.fill")
        let url = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png")
        imageView5.load(url: url!) {
            self.progress5.progress = 1.0
        }
    }
    
    @IBAction func loadAllButton(_ sender: Any) {
        progress1.progress = 0.0
        progress2.progress = 0.0
        progress3.progress = 0.0
        progress4.progress = 0.0
        progress5.progress = 0.0
        imageView1.image = UIImage(systemName: "folder.circle.fill")
        imageView2.image = UIImage(systemName: "folder.circle.fill")
        imageView3.image = UIImage(systemName: "folder.circle.fill")
        imageView4.image = UIImage(systemName: "folder.circle.fill")
        imageView5.image = UIImage(systemName: "folder.circle.fill")
        
        let url1 = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png")
        imageView1.load(url: url1!) {
            self.progress1.progress = 1.0
        }
        
        let url2 = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png")
        imageView2.load(url: url2!) {
            self.progress2.progress = 1.0
        }
        
        let url3 = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png")
        imageView3.load(url: url3!) {
            self.progress3.progress = 1.0
        }
        
        let url4 = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png")
        imageView4.load(url: url4!) {
            self.progress4.progress = 1.0
        }
        
        let url5 = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png")
        imageView5.load(url: url5!) {
            self.progress5.progress = 1.0
        }
    }
}

extension UIImageView {
    func load(url: URL, _ callback: @escaping() -> Void) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                        callback()
                    }
                }
            }
        }
    }
}
