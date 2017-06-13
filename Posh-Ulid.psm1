[CmdletBinding()]
$PublicFunction  = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$PrivateFunction = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )

$Encoding = "0123456789ABCDEFGHJKMNPQRSTVWXYZ"
$EncodingLength = $Encoding.Length

foreach ($import in @($PublicFunction + $PrivateFunction))
{
    Write-Verbose "Importing $import"
    if ($Import.Name -like "*test*") { continue }
    try
    {
        . $Import.FullName
    }
    catch
    {
        throw "Could not import function $($Import.FullName): $_"
    }
}

Export-ModuleMember -Function $PublicFunction.Basename
