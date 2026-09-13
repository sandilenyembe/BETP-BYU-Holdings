Get-VM | ForEach-Object {
    [PSCustomObject]@{
        VMName        = $_.Name
        State         = $_.State
        CPUCount      = $_.ProcessorCount
        StartupMemory = $_.MemoryStartup / 1GB
        AssignedMemory= $_.MemoryAssigned / 1GB
        Uptime        = $_.Uptime
        Host          = $env:COMPUTERNAME
    }
}
