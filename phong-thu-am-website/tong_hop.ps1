# Script:tong_hop.ps1
# Tac gia : Vũ Minh Quân
# Ngay tao: 11/11/2026
Write-Host "Dang tao bao cao ..."
"=== BAO CAO SU CO WEBSITE ===" > logs\tong_hop.txt
cat logs\studio.log | sls status=404 >>logs\tong_hop.txt
cat logs\studio.log | sls status=500 | Measure-Object >> logs\tong_hop.txt
write-host "HOAN THANH !"