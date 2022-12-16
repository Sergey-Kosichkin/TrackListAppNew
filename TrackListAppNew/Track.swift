//
//  Track.swift
//  TrackListAppNew
//
//  Created by Sergey Kosichkin on 15.12.2022.
//

struct Track {
    let artist: String
    let song: String
    
    var title: String {
        "\(artist) - \(song)"
    }
}

extension Track {
    
    static func getTrackList() -> [Track] {
        [
        Track(artist: "Hans Zimmer", song: "2049"),
        Track(artist: "P.T Adamczyk", song: "Rite Of Passage"),
        Track(artist: "Hans Zimmer", song: "Leaving Caladan"),
        Track(artist: "Hans Zimmer", song: "Dream is Collapsing"),
        Track(artist: "Joris de Man", song: "The Good News"),
        Track(artist: "Nicholas Hooper", song: "Dumbledore's Farewell"),
        Track(artist: "Hans Zimmer", song: "Detach"),
        Track(artist: "Alexey Omelchuk", song: "Lacrimosa"),
        Track(artist: "Arkadiusz Reikowski", song: "The Beginning"),
        Track(artist: "Linkin Park", song: "A Place for My Head"),
        Track(artist: "Den Derty", song: "Self Annihilation"),
        Track(artist: "The Prototypes", song: "Pale Blue Dot"),
        ]
    }
}
