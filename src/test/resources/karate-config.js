function fn() {
  var env = karate.env; // por defecto 'dev'

  if (!env) {
    env = 'qa';
  }

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
