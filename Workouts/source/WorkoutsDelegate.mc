using Toybox.WatchUi;

class WorkoutsDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new WorkoutsMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}