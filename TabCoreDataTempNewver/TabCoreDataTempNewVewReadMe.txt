1.Tabbed Applicationで新規プロジェクトを作る

2.MasterViewController、DetailViewControllerをUIViewControllerで作成(New File)

3.iOS→Core Data→Data Modelを選択、プロジェクト名.xcdatamodeldで新規ファイルを作成

4.プロジェクト→TARGETS→Linked Frameworks and Librariesの+をクリックして、CoreData.frameworkとQuartzCore.frameworkを選択、追加する

5.Supporting Files→プロジェクト名-Prefix.pchをクリックし、#endifの前に#import <CoreData/CoreData.h>を付け加える

6.プロジェクト名.xcdatamodeldのAdd EntityをクリックしてENTITESに「Event」と入力、Attributesの+をクリックして「timeStamp」と入力、TypeをDateにする。その他に今回は「addText」と「addText2」(String)を加えています

7.MainStoryboard.storyboardにNavigation ControllerとView ControllerなどUIパーツを配置して結んでいく。
・TableはNavigation Controllerを配置した際にくっついてくるTableView Controllerを消して、View Controllerを置いてその中にTableViewとTableView Cellを配置すればOK。
・TableViewは結びつけて良いが、その中に設置するLabelやUIImageは結びつけないこと。代わりに「Tag」の項目の▲をクリックしてTagを設定する
・ユーザにデータを入力させるタイプのプロジェクトの場合、Table ViewのContentはDynamic Prototypesに、Table View CellのStyleはCustumにしてIdentiferに「Cell」と入力する
・NavigationControllerとFirstViewControllerを結びつける
・MasterViewController.hとDetailViewController.hを結びつけて、→をクリック、SegueのIdentiferをshowDetailにする


10.View Controller -Root View ControllerとView Controllerをクリックして、ClassをそれぞれMasterViewController、DetailViewControllerにする


11.AppDelegate.hと.mの//追加 と書かれている部分を追加する(この時点でエラーがひとつ出てますが気にしないでOK)
このときAppDelegate.mの「TabCoreDataTempNewver」となっているところを自分のプロジェクト名に修正する

12.MasterViewController.hと.mの//追加 と書かれている部分を追加する

13.DetailViewController.hと.mの//追加 と書かれている部分を追加する



