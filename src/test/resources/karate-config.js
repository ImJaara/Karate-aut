
function fn() {

    var env = karate.env;

    if (!env) {
        env = 'qa';
    }

    // Configuración del enmascaramiento de logs
    var LogModifier = Java.type('demo.headers.DemoLogModifier');

    karate.configure('logModifier', LogModifier.INSTANCE);

    var config = {
        env: env,
        baseUrl: 'https://fakestoreapi.com'
    };

    if (env == 'qa') {
        config.baseUrl = 'https://fakestoreapi.com';
    } else if (env == 'prod') {
        config.baseUrl = 'https://fakestoreapis123.com';
    }

    return config;
}
