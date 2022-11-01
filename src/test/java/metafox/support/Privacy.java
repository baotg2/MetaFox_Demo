package metafox.support;

public class Privacy {

    public static int getValue(String label) {
        switch (label.toLowerCase()) {
            case "community":
                return 1;
            case "friends":
                return 2;
            case "friends of friends":
                return 3;
            case "only me":
                return 4;
            case "custom":
                return 10;
            default:
                return 0;
        }
    }
}
