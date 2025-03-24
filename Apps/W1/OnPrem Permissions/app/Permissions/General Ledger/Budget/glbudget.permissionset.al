// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
#pragma warning disable AA0247

permissionset 517 "G/L-BUDGET"
{
    Access = Public;
    Assignable = true;
    Caption = 'Read G/L budgets';

    IncludedPermissionSets = "General Ledger Budget - View";
}
