//
//  ViewController.swift
//  PreferenceViajai
//
//  Created by Anderson Moura on 12/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let preferences = ["Praia", "Frio", "Natureza", "Museu", "Ecoturismo", "Esportes", "Compras", "Gastronomia", "Esportes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "PreferenceTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "PreferenceCell")
        tableView.delegate = self
        tableView.dataSource = self
        configElements()
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return preferences.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PreferenceCell", for: indexPath) as! PreferenceTableViewCell
        cell.preferenceLabel.text = preferences[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

