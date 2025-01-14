<#
Sample MySql Trigger Binding
These tasks should be completed prior to running:
    1. Update "tableName" in function.json - this should be the table that is monitored for changes and triggers/invokes the function.
    2. Add an app setting named "MySqlConnectionString" containing the connection string to use for the MySql connection
    3. Change the bundle name in host.json to "Microsoft.Azure.Functions.ExtensionBundle.Preview" and the version to "[4.*, 5.0.0)"
	4. Add 'az_func_updated_at' column in the table on which the changes are to be monitored.
	5. Add an app setting named "WEBSITE_SITE_NAME" containing the website name.
@param Request The HttpRequest that triggered this function
@param items The array of objects returned by the MySql input binding
#>
using namespace System.Net

# Trigger and input binding data are passed in via the param block.
param($changes)

# Write to the Azure Functions log stream.
Write-Host "PowerShell function with MySql Trigger Binding processed a request."

# The output is used to inspect the trigger binding parameter in test methods.
# Use -Compress to remove new lines and spaces for testing purposes.
$changesJson = $changes | ConvertTo-Json -Compress
Write-Host "MySql Changes: $changesJson"