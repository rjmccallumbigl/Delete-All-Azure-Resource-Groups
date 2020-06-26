# Get all Resource Groups
$rgs = Get-AzResourceGroup;

# Delete all (unless you have one you don't want deleted)
foreach ($item in $rgs) {

    if ($item.ResourceGroupName -ne "Name of Resource Group I don't want deleted") {
        Remove-AzResourceGroup -Name $item.ResourceGroupName -Force;
    }
    
}