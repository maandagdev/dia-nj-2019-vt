import UIKit

class Package{
    private let id: String
    private let doesBreakWhenWet: Bool
    private var moisterObserver: NSObjectProtocol?
    
    init(id:String, doesBreakWhenWet: Bool){
        self.id = id
        self.doesBreakWhenWet = doesBreakWhenWet
        
        if (doesBreakWhenWet){
            moisterObserver = NotificationCenter.default.addObserver(
                forName: NSNotification.Name(rawValue: "rain"),
                object: nil ,
                queue: OperationQueue.main,
                using: {
                    (notification) in
                    print("\(self.id) warns you that it rains")
                    
                }
            )
        }
    }
}

class WeatherStation{
    static func broadCastRainWarning(){
        let notification = Notification(name: NSNotification.Name(rawValue: "rain"))
        NotificationCenter.default.post(notification)
    }
}


let weatherStation = WeatherStation()
var plasticPakket = Package(id: "1234", doesBreakWhenWet: false)
var papierPakket = Package(id: "45667", doesBreakWhenWet: true)


WeatherStation.broadCastRainWarning()


