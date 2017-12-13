Required Nuget Installs
 - Realm

 Step 1:
    Alter the FodyWeavers.xml file to look like the following:
        <?xml version="1.0" encoding="utf-8"?>
        <Weavers>
            <PropertyChanged/>
            <RealmWeaver/>
        </Weavers>