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
    if ($Lowercase)
    {
        $Encoding = $Encoding.toLower()
    }

    $Timestamp = Encode-Time -Time $Time
    $Randomness = Encode-Random -Length 16
    $String = $Timestamp + $Randomness

    $Object = [PSCustomObject]@{
        'Timestamp'  = $Timestamp
        'Randomness' = $Randomness
        'Ulid'       = $String
    }

    return $Object
}
