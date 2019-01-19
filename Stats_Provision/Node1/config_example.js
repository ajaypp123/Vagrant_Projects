{
  mgmt_port: 8126,
  graphitePort: 2003,
  graphiteHost: "node1.example.com",
  port: 8125,
  graphite: {
    legacyNamespace: false,
    globalPrefix: "stats" }
  backends: [ "./backends/graphite" ]
}
