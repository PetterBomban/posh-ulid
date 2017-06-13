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

    $Timestamp = Encode-Time -Time $Time
    $Randomness = Encode-Random -Length 16
    $String = $Timestamp + $Randomness

    $Object = [PSCustomObject]@{
        'Timestamp'  = $Timestamp
        'Randomness' = $Randomness
        'Ulid'       = $String
    }
    
    if ($Lowercase)
    {
        $Object.Timestamp = ($Object.Timestamp).ToLower()
        $Object.Randomness = ($Object.Randomness).ToLower()
        $Object.Ulid = ($Object.Ulid).ToLower()
    }

    return $Object
}
