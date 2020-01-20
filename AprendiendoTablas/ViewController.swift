//
//  ViewController.swift
//  AprendiendoTablas
//
//  Created by Luis Carlos Mejia Garcia on 20/01/20.
//  Copyright © 2020 Platzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Referencia de la tabla
    @IBOutlet weak var tableView: UITableView!
    
    /*
     1. Implementar DataSource <- interfaz
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // No olvidar!! :)
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mi-celda")
        
        // Para interactuar, implementar el delegate
        tableView.delegate = self
        
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("La celda #\(indexPath.row) fué seleccionada.")
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    // 1. Número de filas que tendrá nuestra tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    // 2. Método para saber que celdas deben mostrarse.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mi-celda", for: indexPath)
        
        cell.textLabel?.text = "Soy la celda #\(indexPath.row)"
        
        return cell
    }
}
