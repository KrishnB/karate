function() {
    karate.configure('ssl',true);
     var config = { // base config
        username: 'ramana',
        password: 'demo',
        grant_type: 'password',
        scope:'read',
        tenantId:"default"
      };
      return config;
}
