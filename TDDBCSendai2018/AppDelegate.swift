//
//  AppDelegate.swift
//  TDDBCSendai2018
//
//  Created by Shinzan Takata on 2018/10/20.
//  Copyright © 2018 shiz. All rights reserved.
//

import UIKit

// TODO
// 虚部 (きょぶ : imaginary part) を与えて純虚数を生成する
//  虚部が0ではない整数であった場合、純虚数が生成できること
//  虚部が0であった場合、純虚数が生成できないこと

// 生成した純虚数から 文字列表記 (notation) を取得する
//  5を与えた生成した純虚数の文字列表記が5iになること
//  1を与えた生成した純虚数の文字列表記がiになること
//  -1を与えた生成した純虚数の文字列表記が-iになること
//  2を与えた生成した純虚数の文字列表記が2iになること
//  -2を与えた生成した純虚数の文字列表記が-2iになること


//課題１ 純虚数
//課題１−１ 純虚数の生成と文字列表記の取得
//虚部 (きょぶ : imaginary part) を与えて 純虚数 (じゅんきょすう : purely imaginary number) を生成してください
//ただし、 虚部は「0ではない整数」とします
//生成した純虚数から 文字列表記 (notation) を取得してください
//虚部が b である純虚数の文字列表記は bi となります
//ただし、 虚部が 1 および -1 である純虚数の文字列表記は、 それぞれ i と -i となります (1i, -1i でないことに注意

// TODO
//

//課題１−２ 同一性の判定
//任意の２つの純虚数について、その同一性を判定してください
//  5を与えて生成した純虚数と、別の5を与えて生成した純虚数が等しいこと
//  4を与えて生成した純虚数と、別の5を与えて生成した純虚数が等しいこと
//虚部が同一の値を持つ純虚数同士を同一であるとみなします

// TODO
// 任意の純虚数の共役を取得できること
//  5iの共役が-5iであること

//課題１−３ 共役の取得
//任意の純虚数 bi に対して、その虚部の符号だけが異なる純虚数 -bi を 共役 (きょうやく : conjugate) と呼びます
//
//任意の純虚数の共役を取得してください

// TODO
// 実部 (じつぶ : real part) と 虚部 (きょぶ : imaginary part) を与えて虚数を生成する

//課題２ 虚数 (実部 ≠ 0)
//課題２−１ 虚数の生成と文字列表記の取得
//実部 (実部 : real part) と 虚部 (きょぶ : imaginary part) を与えて 虚数 (きょすう : imaginary number) を生成してください
//ただし、 実部および虚部は 「0ではない整数」とします
//生成した虚数から文字列表記を取得してください
//実部が a、 虚部が b である虚数の文字列表記は a + bi となります
//ただし、 虚部が負の数である虚数の文字列表記は a - bi となります (b < 0) (a + (-b)i ではないことに注意)


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

