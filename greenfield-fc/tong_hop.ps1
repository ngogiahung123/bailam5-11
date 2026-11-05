#Tac gia: Ngô Gia Hưng
#Ngay tao: 5/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO GREENFIELD FC ===" > .\logs\tong_hop.txt
Get-Content .\logs\access.log | Select-String "status=404" >> .\logs\tong_hop.txt
(Get-Content .\logs\access.log | Select-String "status=500").count >> .\logs\tong_hop.txt