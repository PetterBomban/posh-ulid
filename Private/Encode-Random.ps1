function Encode-Random
{
    param
    (
        $Length
    )

    $String = ''

    $Random = [random]::new()
    for ($i = $Length; $i -gt 0; $i--)
    {
        $Rand = [int]([math]::Floor($EncodingLength * $Random.NextDouble()))

        $String = $Encoding[$Rand] + $String

        Start-Sleep -Milliseconds 1
    }

    return $String
}
