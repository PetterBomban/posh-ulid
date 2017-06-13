function Encode-Time
{
    param (
        $Time,
        $Length
    )

    $String = ''

    for ($i = $Length; $i -gt 0; $i--)
    {
        $Mod = [int]($Time % $EncodingLength)

        $String = $Encoding[$Mod] + $String
        $Time = ($Time - $Mod) / $EncodingLength
    }

    return $String
}
