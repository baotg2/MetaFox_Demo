package metafox.support;

public class Privacy {

    public static int getValue(String label) {
        switch (label.toLowerCase()) {
            case "community" :
            case "multiple choice":
                return 1;
            case "friends":
            case "checkbox":
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

    public static int getPrivacy(String label) {
        switch (label.toLowerCase()) {
            case "members only":
                return 2;
            case "admins only":
                return 10;
            default:
                return 0;
        }
    }
}
