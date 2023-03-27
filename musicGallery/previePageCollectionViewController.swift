//
//  previePageCollectionViewController.swift
//  musicGallery
//
//  Created by Борух Соколов on 27.03.2023.
//

import UIKit

//указываем индификатор ячейки
private let reuseIdentifier = "artCover"

//этот класс сделан по шаблону коллекций

class previePageCollectionViewController: UICollectionViewController {
    
    let imageNameArray = [    "Alberto Ruiz Elements (Original Mix)",
                            "Dave Wincent - Red Eye (Original Mix)",
                            "E-Spectro - End Station (Original Mix)",
                            "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                            "Ilija Djokovic - Delusion (Original Mix)",
                            "John Baptiste - Mycelium (Original Mix)",
                            "Lane 8 - Fingerprint (Original Mix)",
                            "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                            "Metodi Hristov, Gallya - Badmash (Original Mix)",
                            "Veerus, Maxie Devine - Nightmare (Original Mix)"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

 


//колличество
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageNameArray.count
    }
    
  

    
    // тут работаем с ячейкой но у на есть отдельный класс cell)
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! artCoverCollectionViewCell
        
        cell.coverImageView.image=UIImage(named: imageNameArray[indexPath.row])
       
    
        // Configure the cell
    
        return cell
    }

   
}
