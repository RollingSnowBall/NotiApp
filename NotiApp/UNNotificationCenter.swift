//
//  UNNotificationCenter.swift
//  NotiApp
//
//  Created by JUNO on 2022/05/12.
//

import Foundation
import UserNotifications

extension UNUserNotificationCenter {
    func addNotiRequest(by alert: Alert){
        let content = UNMutableNotificationContent()
        content.title = "물 마실 시간이에요💦"
        content.body = "시진핑핑이가 목이 마르대요"
        content.sound = .default
        content.badge = 1
        
        let component = Calendar.current.dateComponents([.hour, .minute], from: alert.date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: component, repeats: alert.isOn)
        
        let request = UNNotificationRequest(identifier: alert.id, content: content, trigger: trigger)
        
        self.add(request, withCompletionHandler: nil)
    }
}
