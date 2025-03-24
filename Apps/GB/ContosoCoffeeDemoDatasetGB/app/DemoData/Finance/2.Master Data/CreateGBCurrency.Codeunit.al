#pragma warning disable AA0247
codeunit 11500 "Create GB Currency"
{
    SingleInstance = true;
    EventSubscriberInstance = Manual;
    InherentEntitlements = X;
    InherentPermissions = X;

    [EventSubscriber(ObjectType::Table, Database::Currency, 'OnBeforeInsertEvent', '', false, false)]
    local procedure OnBeforeInsertCurrency(var Rec: Record Currency)
    var
        CreateCurrency: Codeunit "Create Currency";
        CreateGLAccount: Codeunit "Create G/L Account";
    begin
        case Rec.Code of
            CreateCurrency.AED(),
            CreateCurrency.AUD(),
            CreateCurrency.BGN(),
            CreateCurrency.BND(),
            CreateCurrency.BRL(),
            CreateCurrency.CAD(),
            CreateCurrency.CHF(),
            CreateCurrency.CZK(),
            CreateCurrency.DKK(),
            CreateCurrency.DZD(),
            CreateCurrency.EUR(),
            CreateCurrency.FJD(),
            CreateCurrency.HKD(),
            CreateCurrency.HUF(),
            CreateCurrency.HRK(),
            CreateCurrency.IDR(),
            CreateCurrency.INR(),
            CreateCurrency.ISK(),
            CreateCurrency.JPY(),
            CreateCurrency.KES(),
            CreateCurrency.MAD(),
            CreateCurrency.MXN(),
            CreateCurrency.MYR(),
            CreateCurrency.MZN(),
            CreateCurrency.NOK(),
            CreateCurrency.NZD(),
            CreateCurrency.NGN(),
            CreateCurrency.PHP(),
            CreateCurrency.PLN(),
            CreateCurrency.RON(),
            CreateCurrency.RSD(),
            CreateCurrency.SAR(),
            CreateCurrency.SBD(),
            CreateCurrency.SEK(),
            CreateCurrency.SGD(),
            CreateCurrency.SZL(),
            CreateCurrency.THB(),
            CreateCurrency.TND(),
            CreateCurrency.TRY(),
            CreateCurrency.TOP(),
            CreateCurrency.UGX(),
            CreateCurrency.USD(),
            CreateCurrency.VUV(),
            CreateCurrency.WST(),
            CreateCurrency.XPF(),
            CreateCurrency.ZAR(),
            CreateCurrency.RUB(),
            CreateCurrency.GBP():
                ValidateRecordFields(Rec, CreateGLAccount.InterestIncome(), CreateGLAccount.InterestIncome());
        end;
    end;

    local procedure ValidateRecordFields(var Currency: Record Currency; RealizedGainsAcc: Code[20]; RealizedLossesAcc: Code[20])
    begin
        Currency.Validate("Realized Gains Acc.", RealizedGainsAcc);
        Currency.Validate("Realized Losses Acc.", RealizedLossesAcc);
    end;
}
