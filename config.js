var config = new Settings(
{
  elasticsearch:    "http://window.location.hostname:9200",
  kibana_index:     "kibana-int",
  modules:          ['histogram','map','pie','table','stringquery','sort',
                    'timepicker','text','fields','hits','dashcontrol',
                    'column','derivequeries','trends','bettermap'],
  }
);
