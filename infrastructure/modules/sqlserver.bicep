param name string
param location string
param tags object
param administratorLogin string
@secure()
param administratorLoginPassword string



resource sqlserver 'Microsoft.Sql/servers@2021-11-01-preview' = {
  name: name
  location: location
  tags: tags
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
  }
}
