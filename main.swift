import AppKit

final class AppController: NSObject, NSApplicationDelegate {
	let window1 = NSWindow()

	func applicationDidFinishLauching(aNotification: NSNotification) {
		window1.setFrame(CGRect(x:0, y:0, width:800, height:500), display:true)
		window1.makeKeyAndOrderFront(self)
	}

	func applicationWillTerminate(aNotification: NSNotification) {
	}
}

autoreleasepool{ ()->() in
	let app1 = NSApplication.sharedApplication()
	let con1 = AppController()

	app1.delegate = con1
	app1.run()
}
