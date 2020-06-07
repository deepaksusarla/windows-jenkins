function addDNS {

$IPV4=(Test-Connection -ComputerName $env:computername -count 1).ipv4address.IPAddressToString
$dnsName =$IPV4 + ' dmr.jenkins.com'
Add-Content -Path C:\Windows\System32\drivers\etc\hosts  -Value $dnsName
}
addDNS