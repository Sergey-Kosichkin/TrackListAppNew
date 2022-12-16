//
//  TrackListViewController.swift
//  TrackListAppNew
//
//  Created by Sergey Kosichkin on 15.12.2022.
//

import UIKit

class TrackListViewController: UITableViewController {

    private var trackList = Track.getTrackList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 55
        navigationItem.rightBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackName", for: indexPath)
        let track = trackList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = track.song
        content.secondaryText = track.artist
        content.secondaryTextProperties.color = .gray
        content.textToSecondaryTextVerticalPadding = 5
        content.image = UIImage(named: track.title)
        content.imageProperties.cornerRadius = tableView.rowHeight * 0.05
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let track = trackList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: track)
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
        
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let track = trackList.remove(at: sourceIndexPath.row)
        trackList.insert(track, at: destinationIndexPath.row)
    }
    
    
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let trackDetailsVs = segue.destination as? TrackDetailsViewController else { return }
                trackDetailsVs.track = sender as? Track
    }
    

}
