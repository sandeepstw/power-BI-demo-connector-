# PowerBI-demo-connector

# Getting Started with Data Connectors

Data Connectors for Power BI enables users to connect to and access data from your application, service, or data source, providing them with rich business intelligence and robust analytics over multiple data sources. By integrating seamlessly into the Power Query connectivity experience in Power BI Desktop, Data Connectors make it easy for power users to query, shape and mashup data from your app to build reports and dashboards that meet the needs of their organization.

Data Connectors are created using the M language. This is the same language used by the Power Query user experience found in Power BI Desktop and Excel 2016. Extensions allow you to define new functions for the M language, and can be used to enable connectivity to new data sources. While this document will focus on defining new connectors, much of the same process applies to defining general purpose M functions. Extensions can vary in complexity, from simple wrappers that essentially just provide "branding" over existing data source functions, to rich connectors that support Direct Query.

## Quickstart:
1. Install the Power Query SDK from the Visual Studio Marketplace
2. Create a new Data Connector project
3. Define your connector logic
4. Build the project to produce an extension file
5. Create a [My Documents]\Microsoft Power BI Desktop\Custom Connectors directory
6. Copy the extension file into this directory
7. Enable the Custom data connectors preview feature in Power BI Desktop (under File | Options and settings | Custom data connectors)
8. Restart Power BI Desktop

## Sample of PowerBI connetor using public API:
This PowerBI connector is used to load data from public API as data source. Also it is possible to edit the data using Query editor. After the data is ready in required format Reports are created using this data. 

The function that is used to load data is:
Source = OData.Feed(<URL that points to OData data source>)   

### OData.Feed:

OData.Feed(serviceUri as text, optional headers as nullable record, optional options as any)

Returns a table of OData feeds offered by an OData service from a uri serviceUri, headers headers. A boolean value specifying whether to use concurrent connections or an optional record parameter, options, may be specified to control the following options:
* Query
* Headers
* ExcludedFromCacheKey
* ApiKeyName
* Timeout 
* EnableBatch 
* MaxUriLength 
* Concurrent 
* ODataVersion 
* FunctionOverloads 
* MoreColumns 
* IncludeAnnotations 