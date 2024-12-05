New-UDApp -Content { 
    New-UDForm -Id 'form1' -Content {
        New-UDTextbox -Id 'form1Textbox' -Label 'Text'
        New-UDCheckbox -Id 'form1Checkbox' -Label 'Check'
        New-UDSwitch -Id 'form1Switch' -Label 'Switch'
        New-UDRating -Id 'form1Rating'
    } -OnSubmit { 
        $Session:Output = $EventData | Out-String 
        Sync-UDElement -Id 'output'
    }

    New-UDDynamic -Id 'output' -Content {
        New-UDHtml "<pre>$($Session:Output)</pre>"
    }
}