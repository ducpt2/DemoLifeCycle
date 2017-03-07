//
//  NavigationController.swift
//  DemoLifeCycle
//
//  Created by Trương Thắng on 3/7/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    // MARK: Chúng ta có thể set trực tiếp một mảng ViewControllers để điều khiển việc hiển thị.
    // - Viewcontroller ở vị trí cuối cùng sẽ là view được hiển thị.
    // - Lưu ý: Trong trường hợp này, instance của MasterViewController đã có rồi, nhưng hàm ViewDidLoad của nó chưa được gọi, vì View của nó chưa được hiện lên lần nào
    
    override func viewDidLoad() {
        self.viewControllers = [MasterViewController.instance, DetailsViewController.instance]
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
