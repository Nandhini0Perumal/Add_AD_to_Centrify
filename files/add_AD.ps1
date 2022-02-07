$hostname = $args
$container = "domain.com/Centrify/UNIX Servers"
$dnsname =$hostname + ".domain.com"
Import-Module "Centrify.DirectControl.Powershell"
New-CdmManagedComputer -name $hostname -Zone "CN=DOMAIN Systems, CN=Global, CN=Zones, OU=Centrify, DC=DOMAIN, DC=com" =DnsName -Delegate "CN=Zone Administrators, OU=Zone Administration, OU=Centrify, DC=DOMAIN, DC=com" -AdjoinAndMachineOverride - LicenseType Server