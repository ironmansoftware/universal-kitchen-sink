New-UDApp -Content { 
    $Data = @(
        @{Dessert = 'Frozen yoghurt'; Calories = 159; Fat = 6.0; Carbs = 24; Protein = 4.0}
        @{Dessert = 'Ice cream sandwich'; Calories = 159; Fat = 6.0; Carbs = 24; Protein = 4.0}
        @{Dessert = 'Eclair'; Calories = 159; Fat = 6.0; Carbs = 24; Protein = 4.0}
        @{Dessert = 'Cupcake'; Calories = 159; Fat = 6.0; Carbs = 24; Protein = 4.0}
        @{Dessert = 'Gingerbread'; Calories = 159; Fat = 6.0; Carbs = 24; Protein = 4.0}
    ) 
    $Columns = @(
        New-UDTableColumn -Property Dessert -Title "A Dessert"
        New-UDTableColumn -Property Calories -Title Calories 
        New-UDTableColumn -Property Fat -Title Fat 
        New-UDTableColumn -Property Carbs -Title Carbs 
        New-UDTableColumn -Property Protein -Title Protein 
    )
    New-UDTable -Data $Data -Columns $Columns -Id 'table2'

    $Data = @(
     @{ Server = "Server1"; AvailableRam = 128; UsedRAM = 10 }
     @{ Server = "Server2"; AvailableRam = 64; UsedRAM = 63 }
     @{ Server = "Server3"; AvailableRam = 48; UsedRAM = 40 }
     @{ Server = "Server4"; AvailableRam = 64;; UsedRAM = 26 }
     @{ Server = "Server5"; AvailableRam = 128; UsedRAM = 120 }
 )
 New-UDElement -Tag 'div' -Attributes @{ style = @{ height = '20vh'; width = "20vw"; } } -Content {
    New-UDChartJS -Data $Data -DataProperty UsedRAM -LabelProperty Server -Type 'bar' -Id 'chart1'
 }
 }