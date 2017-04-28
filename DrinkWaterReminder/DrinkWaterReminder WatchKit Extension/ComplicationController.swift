//
//  ComplicationController.swift
//  DrinkWaterReminder WatchKit Extension
//
//  Created by Austin Harshberger on 4/22/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import ClockKit


class ComplicationController: NSObject, CLKComplicationDataSource {
    lazy var utilitarianImageProvider: CLKImageProvider? = {
        if let image = UIImage(named: "Complication/Utilitarian") {
            
            return CLKImageProvider(onePieceImage: image)
            
        }
        else {
            print("Cannot find image named 'Complication/Utilitarian'")
        }
        return nil
    }()
    lazy var circularImageProvider: CLKImageProvider? = {
        if let image = UIImage(named: "Complication/Circular") {
            return CLKImageProvider(onePieceImage: image)
        }
        else {
            print("Cannot find image named 'Complication/Circular'")
        }
        return nil
    }()
    
    
    // MARK: - Timeline Configuration
    
    func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void) {
        handler([.forward, .backward])
    }
    
    func getTimelineStartDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void) {
        handler(.showOnLockScreen)
    }
    
    // MARK: - Timeline Population
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        // Call the handler with the current timeline entry
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, before date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries prior to the given date
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries after to the given date
        handler(nil)
    }
    
    // MARK: - Placeholder Templates
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
        // This method will be called once per supported complication, and the results will be cached
        handler(nil)
    }
    
}
