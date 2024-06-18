param(
    [string]$Name,
    [DateTime]$TimeStamp, 
    [int]$Number,
    [string[]]$Values,
    [System.DayOfWeek]$Enum
)

@{
    Name = $Name
    TimeStamp = $TimeStamp
    Number = $Number
    Values = $Values 
    Enum = $Enum
}