//
//  AppDelegate.swift
//  Trafolio
//
//  Created by Peter Chen on 2016-03-11.
//  Copyright © 2016 CoreDev. All rights reserved.
//

import UIKit
import AFNetworking
import CoreLocation

let SERVER_URL = "http://ec2-54-175-171-191.compute-1.amazonaws.com"
let AUTH_CODE = "Peter.Emperor.Jiawei.CoreDev.Oldsiji.Beiguoxia.Cai"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	var httpManager: AFHTTPSessionManager!
	var locationManager = CLLocationManager()
	var geocodeManager = CLGeocoder()

	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		// Override point for customization after application launch.

		let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
		self.httpManager = AFHTTPSessionManager(baseURL: NSURL(string: SERVER_URL)!, sessionConfiguration: configuration)
		let contentTypes = Set<String>(arrayLiteral: "text/plain", "text/html", "application/json")
		self.httpManager.requestSerializer = AFJSONRequestSerializer()
		self.httpManager.responseSerializer = AFJSONResponseSerializer()
		self.httpManager.responseSerializer.acceptableContentTypes = contentTypes

		return true
	}

	func applicationWillResignActive(application: UIApplication) {
		// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
		// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
	}

	func applicationDidEnterBackground(application: UIApplication) {
		// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
		// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
	}

	func applicationWillEnterForeground(application: UIApplication) {
		// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
	}

	func applicationDidBecomeActive(application: UIApplication) {
		// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	}

	func applicationWillTerminate(application: UIApplication) {
		// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
	}


}

