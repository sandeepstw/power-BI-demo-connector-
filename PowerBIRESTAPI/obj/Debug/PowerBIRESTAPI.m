// This file contains your Data Connector logic
section PowerBIRESTAPI;


[DataSource.Kind="PowerBIRESTAPI", Publish="PowerBIRESTAPI.Publish"]
shared PowerBIRESTAPI.Feed = () =>
    let  
        Source = OData.Feed("http://services.odata.org/V3/OData/OData.svc/Products")   
   
    in
        Source;

// Data Source Kind description
PowerBIRESTAPI = [
    Authentication = [
       // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Implicit = []
    ],
    Label = Extension.LoadString("DataSourceLabel")
];

// Data Source UI publishing description
PowerBIRESTAPI.Publish = [
    Beta = true,
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    SourceImage = PowerBIRESTAPI.Icons,
    SourceTypeImage = PowerBIRESTAPI.Icons
];

PowerBIRESTAPI.Icons = [
    Icon16 = { Extension.Contents("PowerBIRESTAPI16.png"), Extension.Contents("PowerBIRESTAPI20.png"), Extension.Contents("PowerBIRESTAPI24.png"), Extension.Contents("PowerBIRESTAPI32.png") },
    Icon32 = { Extension.Contents("PowerBIRESTAPI32.png"), Extension.Contents("PowerBIRESTAPI40.png"), Extension.Contents("PowerBIRESTAPI48.png"), Extension.Contents("PowerBIRESTAPI64.png") }
];

