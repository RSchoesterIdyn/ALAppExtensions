﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Finance.Compensations;

using Microsoft.Finance.GeneralLedger.Journal;

tableextension 31273 "Gen. Journal Line CZC" extends "Gen. Journal Line"
{
    fields
    {
        field(31061; "Compensation CZC"; Boolean)
        {
            Caption = 'Compensation';
            DataClassification = CustomerContent;
        }
    }
}
