$flyway_license_key = "FL017D0549464A6CC40229E069E825513B15D4F0D2645DAAEE89CDA0786C3A668A1875ABEEBE7841FC3B4F8E0881FA90B3B0C3B28E5263CF9A75CF7611A32445A9D03AC2C73A851F5177A1FD90CE0BC28254FEB2E77CBB131986CA3FCDE9B46F95F0D63FAAAC892B55A1C1C0AC204AA8A7C4BA0370D67FD55BDBBA5334B91039A63F3B91A700BCC4F569EB739C77774D964AC440A8E152B6FC21D6FA50EC7F9BCCBD1E09ECFDED951CA6ABF7FE7AA3087E11451712803C47D919A8770CD98FA23E2482D90823C9B4C8F6DC8A3533342F2287152011FBCF7D0351493D42DC6256B766B470FCEF4F74197780B292390731055B346AA7A11D1DF72B6190FB41F20D18B0"
#$project_workspace = "C:\Octopus\Flyway-AutoPilot"
$env_JDBC = "jdbc:sqlserver://localhost;authentication=sqlPassword;databaseName=WidgetProd;encrypt=true;trustServerCertificate=true"
$FIRST_UNDO_SCRIPT = "002.20230703112421"
$user = "Octopus"
$password = "Redg@te1"


flyway -user="$user" -password="$password" -baselineOnMigrate="true" -licenseKey="$flyway_license_key" -configFiles="flyway.toml" -locations="/migrations" info clean info -url="$env_JDBC" -cleanDisabled='false' -reportFilename="Reports\CleanDB"
flyway -user="$user" -password="$password" -baselineOnMigrate="true" -licenseKey="$flyway_license_key" -configFiles="flyway.toml" -locations="/migrations" info migrate info -url="$env_JDBC" -cleanDisabled='false' -reportFilename="Reports\ValidateVScripts"
flyway -user="$user" -password="$password" -baselineOnMigrate="true" -licenseKey="$flyway_license_key" -configFiles="flyway.toml" -locations="/migrations" info undo info -url="$env_JDBC" -cleanDisabled='false' -target="$FIRST_UNDO_SCRIPT" -reportFilename="Reports/ValidateUScripts"


