function New-Ulid
{
    param
    (
        $Time,
        [switch] $Lowercase
    )

    if (!$Time)
    {
        $Time = Get-Now
    }
    $String = ((Encode-Time -Time $Time -Length 10)) + (Encode-Random(16))
    
    if ($Lowercase)
    {
        return $String.ToLower()
    }
    return $String
}
