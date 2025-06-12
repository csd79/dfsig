        ' Limit:
            If Cells(4, 7).Value = "1000000" Then
                .FormFields("EgyNegyzet").CheckBox.Value = True
            ElseIf Cells(4, 7).Value = "20000000" Then
                .FormFields("HuszNegyzet").CheckBox.Value = True
            ElseIf Cells(4, 7).Value = "200000000" Then
                .FormFields("KetszazNegyzet").CheckBox.Value = True
            Else
                .FormFields("NullaNegyzet").CheckBox.Value = True
            End If
        ' Eszköz:
            If Cells(5, 7).Value = "USB Token (QSCD)" Then
                .FormFields("USBTokenNegyzet").CheckBox.Value = True
            ElseIf Cells(5, 7).Value = "Chipkártya (QSCD)" Then
                .FormFields("ChipkartyaNegyzet").CheckBox.Value = True
            Else
                .FormFields("CDNegyzet").CheckBox.Value = True
            End If
        
        
            .Bookmarks.Item("SzervezetNeve").Range.Text = Cells(1, 3).Value
            .Bookmarks.Item("Adoszam").Range.Text = Cells(2, 3).Value
            .Bookmarks.Item("Bankszamlaszam").Range.Text = Cells(3, 3).Value
            .Bookmarks.Item("Irszam").Range.Text = Cells(4, 3).Value
            .Bookmarks.Item("Telepules").Range.Text = Cells(5, 3).Value
            .Bookmarks.Item("Kozter").Range.Text = Cells(6, 3).Value
            .Bookmarks.Item("SzervTel").Range.Text = Cells(7, 3).Value
            .Bookmarks.Item("SzervEmail").Range.Text = Cells(8, 3).Value
            .Bookmarks.Item("KepvJogNev").Range.Text = Cells(9, 3).Value
            .Bookmarks.Item("KepvJogBeoszt").Range.Text = Cells(9, 5).Value
            If Cells(row, 2).Value <> "" Then
                .FormFields("SzervEgysNegyzet").CheckBox.Value = True
            Else
                .FormFields("SzervEgysNegyzet").CheckBox.Value = False
            End If
            .Bookmarks.Item("SzervezetEgyseg").Range.Text = Cells(row, 2).Value

            .FormFields("VisCsNev").Result = Cells(row, 4).Value
            .FormFields("VisUtNev1").Result = Cells(row, 5).Value
            .FormFields("VisUtNev2").Result = Cells(row, 6).Value
            .FormFields("SzulCsNev").Result = Cells(row, 7).Value
            .FormFields("SzulUtNev1").Result = Cells(row, 8).Value
            .FormFields("SzulUtNev2").Result = Cells(row, 9).Value
            .FormFields("AnyjaCsNev").Result = Cells(row, 10).Value
            .FormFields("AnyjaUtNev1").Result = Cells(row, 11).Value
            .FormFields("AnyjaUtNev2").Result = Cells(row, 12).Value
            .FormFields("SzulOrsz").Result = Cells(row, 13).Value
            .FormFields("SzulHely").Result = Cells(row, 14).Value
            .FormFields("SzulDatum").Result = Cells(row, 15).Value
            
            .FormFields("Beosztas").Result = Cells(row, 3).Value
            If Cells(row, 3).Value <> "" Then
                .FormFields("BeosztNegyzet").CheckBox.Value = True
            Else
                .FormFields("BeosztNegyzet").CheckBox.Value = False
            End If
            
            .FormFields("Igszam").Result = Cells(row, 16).Value
            If Len(Cells(row, 16)) > 0 Then
                firstChar = Left(Cells(row, 16), 1)
            End If
            If IsLetter(firstChar) And Len(Cells(row, 16)) = 9 Then
                .FormFields("UtlevelNegyzet").CheckBox.Value = True
            ElseIf IsLetter(firstChar) Then
                .FormFields("VezengNegyzet").CheckBox.Value = True
            Else
                .FormFields("SzigNegyzet").CheckBox.Value = True
            End If

            .FormFields("Telefon").Result = Cells(row, 17).Value
            .FormFields("Email").Result = Cells(row, 18).Value
