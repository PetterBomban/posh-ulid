function New-Ulid
{
    param
    (
        $Time
    )

    if (!$Time)
    {
        $Time = Get-Now
    }
    $String = ((Encode-Time -Time $Time -Length 10)) + (Encode-Random(16))
    
    return $String
}
