package metafox.support;

import javax.annotation.Nonnull;
import java.util.Date;
import java.util.HashMap;

public class UserToken {
    public String access_token;

    public int expires_in;


    private static final HashMap<String, UserToken> tokenStores = new HashMap<String, UserToken>();

    public UserToken(String access_token, int expires_in) {
        this.access_token = access_token;
        this.expires_in = expires_in;
    }

    public static String getUserToken(String username) {

        UserToken found = tokenStores.get(username);

        if (found != null && found.expires_in < new Date().getTime()) {
            return found.access_token;
        }

        return null;
    }


    public static void addUserToken(@Nonnull String username, String access_token, int expires_in) {
        tokenStores.put(username, new UserToken(access_token, expires_in));
    }

}
