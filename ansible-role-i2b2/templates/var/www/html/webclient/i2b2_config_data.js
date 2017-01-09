{
        urlProxy: "index.php",
        urlFramework: "js-i2b2/",
        //-------------------------------------------------------------------------------------------
        // THESE ARE ALL THE DOMAINS A USER CAN LOGIN TO
        lstDomains: [
                { domain: "{{ i2b2_domain }}",
                  name: "i2b2 Demo",
                  urlCellPM: "http://127.0.0.1:{{ i2b2_ports.http }}/i2b2/services/PMService/",
                  allowAnalysis: true,
                  debug: false
                }
        ]
        //-------------------------------------------------------------------------------------------
}