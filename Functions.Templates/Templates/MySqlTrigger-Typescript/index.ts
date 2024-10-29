import { AzureFunction, Context } from "@azure/functions"

/**
 * Sample MySql Trigger Binding
 *
 * These tasks should be completed prior to running :
 *      1. Update "tableName" in function.json - this should be the table that is monitored for changes and triggers/invokes the function.
 *      2. Add an app setting named "MySqlConnectionString" containing the connection string
 *          to use for the MySql connection
 *      3. Change the bundle name in host.json to "Microsoft.Azure.Functions.ExtensionBundle.Preview" and the version to "[4.*, 5.0.0)"
 *		4. Add 'az_func_updated_at' column in the table on which the changes are to be monitored.
 *		5. Add an app setting named "WEBSITE_SITE_NAME" containing the website name.
 * @param context The Azure Function runtime context
 * @param req The HttpRequest that triggered this function
 * @param items The array of objects returned by the MySql input binding
 */
const mysqlTriggerBinding: AzureFunction = async function (context: Context, changes: any[]): Promise<void> {
    context.log(`MySql Changes: ${JSON.stringify(changes)}`);
};

export default mysqlTriggerBinding;