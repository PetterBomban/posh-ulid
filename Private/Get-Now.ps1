function Get-Now
{
    return [UInt64]((([datetime]::UtcNow).Ticks - 621355968000000000) / 10000)
}
