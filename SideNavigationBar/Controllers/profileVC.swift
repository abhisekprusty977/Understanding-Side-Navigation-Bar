//
//  profileVC.swift
//  sideMenu
//
//  Created by Abhisek Prusty on 21/02/2026.
//

import UIKit

class profileVC: UIViewController, UITextViewDelegate {
    
    private let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.systemGray4.cgColor
        textView.layer.cornerRadius = 12
        textView.clipsToBounds = true
        textView.isEditable = false
        textView.isSelectable = true
        textView.isScrollEnabled = true
        textView.backgroundColor = .secondarySystemBackground
        textView.linkTextAttributes = [
            .foregroundColor: UIColor.systemBlue,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Profile"
        self.view.backgroundColor = .systemBackground
        
        view.addSubview(descriptionTextView)
        
        NSLayoutConstraint.activate([
            descriptionTextView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
        
        descriptionTextView.delegate = self
        setupProfileContent()
    }
    
    private func setupProfileContent() {
        
        let attributedString = NSMutableAttributedString()
        
        let normalFont = UIFont.systemFont(ofSize: 15)
        let linkFont = UIFont.systemFont(ofSize: 15)
        
        func addText(_ text: String) {
            let attributes: [NSAttributedString.Key: Any] = [
                .font: normalFont,
                .foregroundColor: UIColor.label
            ]
            
            attributedString.append(NSAttributedString(string: text, attributes: attributes))
        }
        
        func addLink(title: String, url: String) {
            let attributes: [NSAttributedString.Key: Any] = [
                .font: linkFont,
                .link: url,
                .foregroundColor: UIColor.systemBlue
            ]
            
            attributedString.append(NSAttributedString(string: title, attributes: attributes))
        }
        
        // MARK: - Basic Info
        
        addText("My Designation : iOS Developer\n\n")
        
        addText("My GitHub Profile : ")
        addLink(title: "Open GitHub", url: "https://github.com/abhisekprusty977")
        addText("\n\n")
        
        addText("YouTube Channel : ")
        addLink(title: "Visit Channel", url: "https://www.youtube.com/@abhisekprusty4990")
        addText("\n\n")
        
        addText("Xcode Download Link : ")
        addLink(title: "Download Xcode", url: "https://apps.apple.com/in/app/xcode/id497799835?mt=12Xcode")
        addText("\n\n")
        
        addText("Cocoapods Installation : ")
        addLink(title: "Install Cocoapods", url: "https://cocoapods.org")
        addText("\n\n")
        
        addText("Git Installation for Mac : ")
        addLink(title: "Install Git", url: "https://git-scm.com/install/mac")
        addText("\n\n")
        
        addText("Swift Documentation : ")
        addLink(title: "Open Docs", url: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/")
        addText("\n\n")
        
        addText("SwiftUI Tutorial : ")
        addLink(title: "View Tutorial", url: "https://developer.apple.com/tutorials/swiftui/creating-and-combining-views")
        addText("\n\n")
        
        // MARK: - YouTube Projects
        
        addText("My Projects YouTube Links:\n\n")
        
        let youtubeLinks = [
            "Apple Pay": "https://youtu.be/PXAGodERtCU?si=2UNQOUFrkZjZZMi1",
            
            "Food App": "https://youtu.be/eWnWKeUDFRU?si=8oZtqvOwjRRsEIOB",
            
            "SwiftUI LiquidGlass": "https://youtu.be/OjAGw_74xYM?si=XO8FZShgu9-Enxwq",
            
            "Generative Models": "https://www.youtube.com/watch?v=Wc5XUw1S7Kg",
            
            "App Intents": "https://youtu.be/_4k3RiHtOr0?si=E0TWnU3NFjX8QAJm",
            
            "SwiftData": "https://youtu.be/dE4HmNowYk0",
            
            "StoreKit WorkFlows": "https://www.youtube.com/watch?v=jGyQN0jWg20",
            
            "Understanding MVC | MVVM | VIPER | Clean Architecture": "https://www.youtube.com/watch?v=xIWHujzNzLM"
        ]
        
        for (title, link) in youtubeLinks {
            addText("• \(title) : ")
            addLink(title: "Watch", url: link)
            addText("\n")
        }
        
        addText("\n")
        
        // MARK: - GitHub Projects
        
        addText("🔗 GitHub Direct Projects Links:\n\n")
        
        let githubLinks = [
            "Apple Pay": "https://github.com/abhisekprusty977/Apple-Pay",
            
            "Food App": "https://github.com/abhisekprusty977/FoodApp-SwiftUI",
            
            "Liquid Glass": "https://github.com/abhisekprusty977/Building-an-app-with-Liquid-Glass",
            
            "Generative Models": "https://github.com/abhisekprusty977/Adding-intelligent-app-features-with-generative-models",
            
            "App Intents": "https://github.com/abhisekprusty977/Adopting-App-Intents-to-support-system-experiences",
            
            "SwiftData": "https://github.com/abhisekprusty977/Adopting-SwiftData-for-a-Core-Data-app",
            
            "StoreKit WorkFlows": "https://github.com/abhisekprusty977/StoreKit-workflows",
            
            "Understanding MVC Architecture with Sample API Parsing": "https://github.com/abhisekprusty977/MVC-Posts-App-SwiftUI-",
            
            "Understanding MVVM Architecture with Sample API Parsing": "https://lnkd.in/emvbdvMm",
            
            "Understanding VIPER Architecture with Sample API Parsing": "https://lnkd.in/eTv7Vxfr",
            
            "Understanding Clean Architecture with Sample API Parsing":
                "https://lnkd.in/e6fp44_p"
        ]
        
        for (title, link) in githubLinks {
            addText("• \(title) : ")
            addLink(title: "View Project", url: link)
            addText("\n")
        }
        
        addText("\n")
        
        // MARK: - Documentation Links
        
        addText("📄 Project Documentation Links:\n\n")
        
        let docLinks = [
            "Apple Pay": "https://docs.google.com/document/d/1r0r4iO0tXC3VUlNJztKiIq01wLfRSJoP94YpRskXjfs/edit?usp=sharing",
            
            "Food App": "https://docs.google.com/document/d/1SvcKUT84Mv1fBaXXgPwaAaWo_o1pczVS76MN-K8ScZY/edit?usp=sharing",
            
            "SwiftUI LiquidGlass": "https://docs.google.com/document/d/1LkzketQoOJKPxHPbsskB46dB8sUEOwKEzNnbRQK1sCc/edit?usp=sharing",
            
            "Generative Models": "https://docs.google.com/document/d/1aVkbyej1zpfgCDJfmp-1lIPjexUJptkxiiuCMqZqm2c/edit?usp=sharing",
            
            "App Intents": "https://docs.google.com/document/d/1Te8B_m-ypjYt8KAhPrn5SpagggpdmxMxgQ45DSDDZVc/edit?usp=sharing",
            
            "SwiftData": "https://docs.google.com/document/d/1EtKC1tBnjNOtQoaGSVBVrWTXGGYH_4bh0w__ayzYlhU/edit?usp=sharing",
            
            "StoreKit WorkFlows": "https://docs.google.com/document/d/1viXaDNEpJjJE93JyYhi6faQ-nqmVgI-1YixxK7NldhQ/edit?usp=sharing",
            
            "Understanding MVC Architecture with Sample API Parsing": "https://docs.google.com/document/d/1AXpGJabAubisCzwaTcF9RD6y7vOa6fpTccdDPb6-pmc/edit?usp=sharing",
            
            "Understanding MVVM Architecture with Sample API Parsing": "https://docs.google.com/document/d/1vXA5G9_PwQ6m3J8BycsVtZXFuYG_y-COWOn87gwX2Eo/edit?usp=sharing",
            
            "Understanding VIPER Architecture with Sample API Parsing": "https://docs.google.com/document/d/1cuDIFjNCbxkj9wUjL51HPRLN8gmgJXwTWY6aAypbwkg/edit?usp=sharing",
            
            "Understanding Clean Architecture with Sample API Parsing": "https://docs.google.com/document/d/1nRd1W32IpsrPesePGkcMZCNQ2rvHxM2Ep9j4D_UZY2k/edit?usp=sharing"
        ]
        
        for (title, link) in docLinks {
            addText("• \(title) : ")
            addLink(title: "Open Doc", url: link)
            addText("\n")
        }
        
        descriptionTextView.attributedText = attributedString
    }
    
    // MARK: - Handle Link Tap
    
    func textView(_ textView: UITextView,
                  shouldInteractWith URL: URL,
                  in characterRange: NSRange,
                  interaction: UITextItemInteraction) -> Bool {
        
        UIApplication.shared.open(URL)
        return false
    }
}
