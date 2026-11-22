
package demo.headers;

import com.intuit.karate.http.HttpLogModifier;

import java.util.Locale;
import java.util.regex.Pattern;

public class DemoLogModifier implements HttpLogModifier {

    public static final HttpLogModifier INSTANCE =
            new DemoLogModifier();

    private static final Pattern SENSITIVE_JSON = Pattern.compile(
            "(\"(?:password|token|access_token|refresh_token|client_secret|secret)\"\\s*:\\s*)\"[^\"]*\"",
            Pattern.CASE_INSENSITIVE
    );

    private static final Pattern BEARER_TOKEN = Pattern.compile(
            "Bearer\\s+[A-Za-z0-9._~+/=-]+",
            Pattern.CASE_INSENSITIVE
    );

    @Override
    public boolean enableForUri(String uri) {
        return true;
    }

    @Override
    public String uri(String uri) {
        return uri;
    }

    @Override
    public String header(String header, String value) {

        String name = header.toLowerCase(Locale.ROOT);

        if (name.equals("authorization")
                || name.equals("cookie")
                || name.equals("set-cookie")
                || name.equals("proxy-authorization")
                || name.contains("api-key")) {
            return "***";
        }

        return value;
    }

    @Override
    public String request(String uri, String request) {
        return maskSensitiveData(request);
    }

    @Override
    public String response(String uri, String response) {
        return maskSensitiveData(response);
    }

    private String maskSensitiveData(String data) {

        if (data == null) {
            return null;
        }

        data = SENSITIVE_JSON.matcher(data)
                .replaceAll("$1\"***\"");

        data = BEARER_TOKEN.matcher(data)
                .replaceAll("Bearer ***");

        return data;
    }
}
