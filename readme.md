# Posh-Ulid

[ULID](https://github.com/alizain/ulid) implemented in PowerShell. Ported from [fvilers](https://github.com/fvilers)'s [C# version](https://github.com/fvilers/ulid.net).

## Usage

```PowerShell
Import-Module Posh-Ulid

## 01BJGF2QM4KW1PAG49YJRC16T0
New-Ulid

## First 10 characters will always be the same
New-Ulid -Time 1497346166809
```
