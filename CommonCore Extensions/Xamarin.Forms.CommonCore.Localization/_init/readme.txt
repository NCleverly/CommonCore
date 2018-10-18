
Step 0:
    Define the values in the localization.csv file in an editor like Microsoft Excel.  Make
    sure to save as comma delimited Unicode (CSV UTF8).

    Columns define language and rows define the variable.

Step 1:
    Copy the lang folder in Config into the project and set the CSV build action to embedded


Step 2:
    In the AppDelegate (iOS)/MainApplication (Droid) call Init method on the LocalizationService class. Passing in a different 
    version string will reinitialize the parsing the CSV and creating the json files in app storage.

Step 3:
    Define a bindable property in a view model and set the value as follows (i.e):
        GreetingText = LocalizationService["Greeting"];

