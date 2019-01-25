// Assumes content already saved on device
using Toybox.PersistedContent;
using Toybox.WatchUi;

class WorkoutsView extends WatchUi.View {

	var iterator = getAppWorkouts(); 			// Get the Iterator
	var content = iterator.next();              // Get the next object in the iterator

	var name = content.getName();               // Get the content name
	var id = content.getId();                   // Get the content id
	
	var targetApp = new System.Intent(
    "manifest-id://12345678-1234-1234-1234-123412341234",
    {"arg"=>"CurrentAppName"}
	);
	System.exitTo(targetApp);



    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
