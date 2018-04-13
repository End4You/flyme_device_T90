.class public Landroid/provider/SpnProvider;
.super Ljava/lang/Object;
.source "SpnProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SpnProvider$SPNObject;
    }
.end annotation


# static fields
.field private static final LIST_MCC_MNC_SPN:[Landroid/provider/SpnProvider$SPNObject;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 69
    const/16 v0, 0x3ee

    new-array v6, v0, [Landroid/provider/SpnProvider$SPNObject;

    .line 73
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Test1-1"

    const-string/jumbo v4, "Test PLMN 1-1"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 78
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Test1-2"

    const-string/jumbo v4, "Test PLMN 1-2"

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/4 v1, 0x1

    aput-object v0, v6, v1

    .line 83
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Test2-1"

    const-string/jumbo v4, "Test PLMN 2-1"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/4 v1, 0x2

    aput-object v0, v6, v1

    .line 88
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cosmote"

    const-string/jumbo v4, "COSMOTE - Mobile Telecommunications S.A."

    const/16 v1, 0xca

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/4 v1, 0x3

    aput-object v0, v6, v1

    .line 89
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Greece"

    const/16 v1, 0xca

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/4 v1, 0x4

    aput-object v0, v6, v1

    .line 90
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Wind"

    const-string/jumbo v4, "Wind Hella telecommunications S.A."

    const/16 v1, 0xca

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/4 v1, 0x5

    aput-object v0, v6, v1

    .line 91
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Wind"

    const-string/jumbo v4, "Wind Hella telecommunications S.A."

    const/16 v1, 0xca

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/4 v1, 0x6

    aput-object v0, v6, v1

    .line 96
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Rabo Mobiel"

    const-string/jumbo v4, "KPN"

    const/16 v1, 0xcc

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/4 v1, 0x7

    aput-object v0, v6, v1

    .line 97
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Netherlands"

    const/16 v1, 0xcc

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x8

    aput-object v0, v6, v1

    .line 98
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KPN"

    const-string/jumbo v4, "KPN"

    const/16 v1, 0xcc

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x9

    aput-object v0, v6, v1

    .line 99
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telfort"

    const-string/jumbo v4, "KPN"

    const/16 v1, 0xcc

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa

    aput-object v0, v6, v1

    .line 100
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile / Ben"

    const-string/jumbo v4, "T-Mobile Netherlands B.V"

    const/16 v1, 0xcc

    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb

    aput-object v0, v6, v1

    .line 101
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange Nederland"

    const-string/jumbo v4, "T-Mobile Netherlands B.V"

    const/16 v1, 0xcc

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc

    aput-object v0, v6, v1

    .line 102
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "NS Railinfrabeheer B.V."

    const-string/jumbo v4, "NS Railinfrabeheer B.V."

    const/16 v1, 0xcc

    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd

    aput-object v0, v6, v1

    .line 107
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Proximus"

    const-string/jumbo v4, "Belgacom Mobile"

    const/16 v1, 0xce

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe

    aput-object v0, v6, v1

    .line 108
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobistar"

    const-string/jumbo v4, "France Telecom"

    const/16 v1, 0xce

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf

    aput-object v0, v6, v1

    .line 109
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BASE"

    const-string/jumbo v4, "KPN"

    const/16 v1, 0xce

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x10

    aput-object v0, v6, v1

    .line 114
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange"

    const/16 v1, 0xd0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x11

    aput-object v0, v6, v1

    .line 115
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange"

    const/16 v1, 0xd0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x12

    aput-object v0, v6, v1

    .line 116
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange"

    const/16 v1, 0xd0

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x13

    aput-object v0, v6, v1

    .line 117
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Globalstar Europe"

    const-string/jumbo v4, "Globalstar Europe"

    const/16 v1, 0xd0

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x14

    aput-object v0, v6, v1

    .line 118
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Globalstar Europe"

    const-string/jumbo v4, "Globalstar Europe"

    const/16 v1, 0xd0

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x15

    aput-object v0, v6, v1

    .line 119
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Globalstar Europe"

    const-string/jumbo v4, "Globalstar Europe"

    const/16 v1, 0xd0

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x16

    aput-object v0, v6, v1

    .line 120
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "F SFR"

    const-string/jumbo v4, "F SFR"

    const/16 v1, 0xd0

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x17

    aput-object v0, v6, v1

    .line 121
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "F SFR"

    const-string/jumbo v4, "F SFR"

    const/16 v1, 0xd0

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x18

    aput-object v0, v6, v1

    .line 122
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SFR Femto"

    const-string/jumbo v4, "SFR Femto"

    const/16 v1, 0xd0

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x19

    aput-object v0, v6, v1

    .line 123
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Free"

    const-string/jumbo v4, "Free"

    const/16 v1, 0xd0

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a

    aput-object v0, v6, v1

    .line 124
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Bouygues Telecom"

    const-string/jumbo v4, "Bouygues Telecom"

    const/16 v1, 0xd0

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b

    aput-object v0, v6, v1

    .line 125
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Bouygues"

    const-string/jumbo v4, "Bouygues Telecom"

    const/16 v1, 0xd0

    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c

    aput-object v0, v6, v1

    .line 126
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Virgin Mobile"

    const-string/jumbo v4, "Virgin Mobile"

    const/16 v1, 0xd0

    const/16 v2, 0x17

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d

    aput-object v0, v6, v1

    .line 131
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobiland"

    const-string/jumbo v4, "Servei De Tele. DAndorra"

    const/16 v1, 0xd5

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e

    aput-object v0, v6, v1

    .line 136
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Spain"

    const/16 v1, 0xd6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f

    aput-object v0, v6, v1

    .line 137
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "France Telcom Espana SA"

    const/16 v1, 0xd6

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x20

    aput-object v0, v6, v1

    .line 138
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Yoigo"

    const-string/jumbo v4, "Xfera Moviles SA"

    const/16 v1, 0xd6

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x21

    aput-object v0, v6, v1

    .line 139
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TME"

    const-string/jumbo v4, "Telefonica Moviles Espana"

    const/16 v1, 0xd6

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x22

    aput-object v0, v6, v1

    .line 140
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Spain"

    const/16 v1, 0xd6

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x23

    aput-object v0, v6, v1

    .line 141
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Movistar"

    const-string/jumbo v4, "Movistar"

    const/16 v1, 0xd6

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x24

    aput-object v0, v6, v1

    .line 142
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "France Telcom Espana SA"

    const/16 v1, 0xd6

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x25

    aput-object v0, v6, v1

    .line 147
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Pannon"

    const-string/jumbo v4, "Pannon GSM Tavkozlesi Zrt."

    const/16 v1, 0xd8

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x26

    aput-object v0, v6, v1

    .line 148
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "Magyar Telkom Plc"

    const/16 v1, 0xd8

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x27

    aput-object v0, v6, v1

    .line 149
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafonei Magyarorszag Zrt."

    const/16 v1, 0xd8

    const/16 v2, 0x46

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x28

    aput-object v0, v6, v1

    .line 154
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ERONET"

    const-string/jumbo v4, "Public Enterprise Croatian telecom Ltd."

    const/16 v1, 0xda

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x29

    aput-object v0, v6, v1

    .line 155
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "m:tel"

    const-string/jumbo v4, "RS Telecommunications JSC Banja Luka"

    const/16 v1, 0xda

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a

    aput-object v0, v6, v1

    .line 156
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BH Mobile"

    const-string/jumbo v4, "BH Telecom"

    const/16 v1, 0xda

    const/16 v2, 0x5a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b

    aput-object v0, v6, v1

    .line 161
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile Croatia"

    const/16 v1, 0xdb

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c

    aput-object v0, v6, v1

    .line 162
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tele2"

    const-string/jumbo v4, "Tele2"

    const/16 v1, 0xdb

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d

    aput-object v0, v6, v1

    .line 163
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "VIPnet"

    const-string/jumbo v4, "Vipnet"

    const/16 v1, 0xdb

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e

    aput-object v0, v6, v1

    .line 168
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telenor"

    const-string/jumbo v4, "Telenor Serbia"

    const/16 v1, 0xdc

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f

    aput-object v0, v6, v1

    .line 169
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telekom Sribija"

    const-string/jumbo v4, "Telekom Srbija"

    const/16 v1, 0xdc

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x30

    aput-object v0, v6, v1

    .line 170
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "VIP Mobile"

    const-string/jumbo v4, "VIP Mobile"

    const/16 v1, 0xdc

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x31

    aput-object v0, v6, v1

    .line 175
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "I TIM"

    const-string/jumbo v4, "I TIM"

    const/16 v1, 0xde

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x32

    aput-object v0, v6, v1

    .line 176
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Elsacom"

    const-string/jumbo v4, "Elsacom"

    const/16 v1, 0xde

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x33

    aput-object v0, v6, v1

    .line 177
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "vodafone IT"

    const-string/jumbo v4, "vodafone IT"

    const/16 v1, 0xde

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x34

    aput-object v0, v6, v1

    .line 178
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "RRI"

    const-string/jumbo v4, "Rete  Ferroviaria Italiana"

    const/16 v1, 0xde

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x35

    aput-object v0, v6, v1

    .line 179
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "I WIND"

    const-string/jumbo v4, "I WIND"

    const/16 v1, 0xde

    const/16 v2, 0x58

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x36

    aput-object v0, v6, v1

    .line 180
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3 ITA"

    const-string/jumbo v4, "3 ITA"

    const/16 v1, 0xde

    const/16 v2, 0x63

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x37

    aput-object v0, v6, v1

    .line 185
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Romania"

    const/16 v1, 0xe2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x38

    aput-object v0, v6, v1

    .line 186
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cosmote"

    const-string/jumbo v4, "Cosmote Romania"

    const/16 v1, 0xe2

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x39

    aput-object v0, v6, v1

    .line 187
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DIGI.mobil"

    const-string/jumbo v4, "RCS&RDS"

    const/16 v1, 0xe2

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a

    aput-object v0, v6, v1

    .line 188
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Romania"

    const/16 v1, 0xe2

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b

    aput-object v0, v6, v1

    .line 193
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Swisscom"

    const-string/jumbo v4, "Swisscom Ltd"

    const/16 v1, 0xe4

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c

    aput-object v0, v6, v1

    .line 194
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Sunrise"

    const-string/jumbo v4, "Sunrise Communications AG"

    const/16 v1, 0xe4

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d

    aput-object v0, v6, v1

    .line 195
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Communications SA"

    const/16 v1, 0xe4

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e

    aput-object v0, v6, v1

    .line 196
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SBB AG"

    const-string/jumbo v4, "SBB AG"

    const/16 v1, 0xe4

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3f

    aput-object v0, v6, v1

    .line 197
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "IN&Phone"

    const-string/jumbo v4, "IN&Phone SA"

    const/16 v1, 0xe4

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x40

    aput-object v0, v6, v1

    .line 198
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tele2"

    const-string/jumbo v4, "Tele2 Telecommunications AG"

    const/16 v1, 0xe4

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x41

    aput-object v0, v6, v1

    .line 203
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile Czech Republic"

    const/16 v1, 0xe6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x42

    aput-object v0, v6, v1

    .line 204
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "EUROTEL PRAHA"

    const-string/jumbo v4, "Telefonica O2 Czech Republic"

    const/16 v1, 0xe6

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x43

    aput-object v0, v6, v1

    .line 205
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "OSKAR"

    const-string/jumbo v4, "Vodafone Czech Republic"

    const/16 v1, 0xe6

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x44

    aput-object v0, v6, v1

    .line 206
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CZDC s.o."

    const-string/jumbo v4, "CZDC s.o."

    const/16 v1, 0xe6

    const/16 v2, 0x62

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x45

    aput-object v0, v6, v1

    .line 211
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Slovensko"

    const/16 v1, 0xe7

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x46

    aput-object v0, v6, v1

    .line 212
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile Slovensko"

    const/16 v1, 0xe7

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x47

    aput-object v0, v6, v1

    .line 213
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile Slovensko"

    const/16 v1, 0xe7

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x48

    aput-object v0, v6, v1

    .line 214
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "O2"

    const-string/jumbo v4, "Telefonica O2 Slovakia"

    const/16 v1, 0xe7

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x49

    aput-object v0, v6, v1

    .line 219
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "A1"

    const-string/jumbo v4, "Mobilkom Austria"

    const/16 v1, 0xe8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x4a

    aput-object v0, v6, v1

    .line 220
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile Austria"

    const/16 v1, 0xe8

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x4b

    aput-object v0, v6, v1

    .line 221
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Austria"

    const/16 v1, 0xe8

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x4c

    aput-object v0, v6, v1

    .line 222
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile Austria"

    const/16 v1, 0xe8

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x4d

    aput-object v0, v6, v1

    .line 223
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "Hutchison 3G"

    const/16 v1, 0xe8

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x4e

    aput-object v0, v6, v1

    .line 228
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BT"

    const-string/jumbo v4, "British Telecom"

    const/16 v1, 0xea

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x4f

    aput-object v0, v6, v1

    .line 229
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "UK01"

    const-string/jumbo v4, "Mapesbury Communications Ltd."

    const/16 v1, 0xea

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x50

    aput-object v0, v6, v1

    .line 230
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "O2"

    const-string/jumbo v4, "O2"

    const/16 v1, 0xea

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x51

    aput-object v0, v6, v1

    .line 231
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Jersey Telenet"

    const-string/jumbo v4, "Jersey Telnet"

    const/16 v1, 0xea

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x52

    aput-object v0, v6, v1

    .line 232
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "O2"

    const-string/jumbo v4, "Telefonica O2 UK Limited"

    const/16 v1, 0xea

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x53

    aput-object v0, v6, v1

    .line 233
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "O2"

    const-string/jumbo v4, "Telefonica Europe"

    const/16 v1, 0xea

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x54

    aput-object v0, v6, v1

    .line 234
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Railtrack"

    const-string/jumbo v4, "Network Rail Infrastructure Ltd"

    const/16 v1, 0xea

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x55

    aput-object v0, v6, v1

    .line 235
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone United Kingdom"

    const/16 v1, 0xea

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x56

    aput-object v0, v6, v1

    .line 236
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Opal Telecom Ltd"

    const-string/jumbo v4, "Opal Telecom Ltd"

    const/16 v1, 0xea

    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x57

    aput-object v0, v6, v1

    .line 237
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cloud9"

    const-string/jumbo v4, "Wire9 Telecom plc"

    const/16 v1, 0xea

    const/16 v2, 0x12

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x58

    aput-object v0, v6, v1

    .line 238
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telaware"

    const-string/jumbo v4, "Telaware plc"

    const/16 v1, 0xea

    const/16 v2, 0x13

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x59

    aput-object v0, v6, v1

    .line 239
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "Hutchison 3G UK Ltd"

    const/16 v1, 0xea

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x5a

    aput-object v0, v6, v1

    .line 240
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile"

    const/16 v1, 0xea

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x5b

    aput-object v0, v6, v1

    .line 241
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Virgin"

    const-string/jumbo v4, "Virgin Mobile"

    const/16 v1, 0xea

    const/16 v2, 0x1f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x5c

    aput-object v0, v6, v1

    .line 242
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Virgin"

    const-string/jumbo v4, "Virgin Mobile"

    const/16 v1, 0xea

    const/16 v2, 0x20

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x5d

    aput-object v0, v6, v1

    .line 243
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange PCS Ltd"

    const/16 v1, 0xea

    const/16 v2, 0x21

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x5e

    aput-object v0, v6, v1

    .line 244
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange PCS Ltd"

    const/16 v1, 0xea

    const/16 v2, 0x22

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x5f

    aput-object v0, v6, v1

    .line 245
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "JT-Wave"

    const-string/jumbo v4, "Jersey Telecoms"

    const/16 v1, 0xea

    const/16 v2, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x60

    aput-object v0, v6, v1

    .line 246
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cable & Wireless Guernsey / Sure Mobile (Jersey)"

    .line 247
    const-string/jumbo v4, "Cable & Wireless Guernsey / Sure Mobile (Jersey)"

    .line 246
    const/16 v1, 0xea

    const/16 v2, 0x37

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x61

    aput-object v0, v6, v1

    .line 248
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Manx Telecom"

    const-string/jumbo v4, "Manx Telecom"

    const/16 v1, 0xea

    const/16 v2, 0x3a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x62

    aput-object v0, v6, v1

    .line 249
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Inquam"

    const-string/jumbo v4, "Inquam Telecom (Holdings) Ltd"

    const/16 v1, 0xea

    const/16 v2, 0x4b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x63

    aput-object v0, v6, v1

    .line 254
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TDC"

    const-string/jumbo v4, "TDC A/S"

    const/16 v1, 0xee

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x64

    aput-object v0, v6, v1

    .line 255
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Sonofon"

    const-string/jumbo v4, "Telenor"

    const/16 v1, 0xee

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x65

    aput-object v0, v6, v1

    .line 256
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "Hi3G Denmark ApS"

    const/16 v1, 0xee

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x66

    aput-object v0, v6, v1

    .line 257
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telia"

    const-string/jumbo v4, "Telia Nattjanster Norden AB"

    const/16 v1, 0xee

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x67

    aput-object v0, v6, v1

    .line 258
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tele2"

    const-string/jumbo v4, "Telenor"

    const/16 v1, 0xee

    const/16 v2, 0x46

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x68

    aput-object v0, v6, v1

    .line 263
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telia"

    const-string/jumbo v4, "TeliaSonera Mobile Networks"

    const/16 v1, 0xf0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x69

    aput-object v0, v6, v1

    .line 264
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "3"

    const/16 v1, 0xf0

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x6a

    aput-object v0, v6, v1

    .line 265
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3G Infrastructure Services"

    const-string/jumbo v4, "3G Infrastructure Services"

    const/16 v1, 0xf0

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x6b

    aput-object v0, v6, v1

    .line 266
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Sweden 3G"

    const-string/jumbo v4, "Sweden 3G"

    const/16 v1, 0xf0

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x6c

    aput-object v0, v6, v1

    .line 267
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telenor"

    const-string/jumbo v4, "Telenor"

    const/16 v1, 0xf0

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x6d

    aput-object v0, v6, v1

    .line 268
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tele2"

    const-string/jumbo v4, "Tele2 AB"

    const/16 v1, 0xf0

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x6e

    aput-object v0, v6, v1

    .line 269
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telenor"

    const-string/jumbo v4, "Telenor"

    const/16 v1, 0xf0

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x6f

    aput-object v0, v6, v1

    .line 270
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Banverket"

    const-string/jumbo v4, "Banverket"

    const/16 v1, 0xf0

    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x70

    aput-object v0, v6, v1

    .line 275
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telenor"

    const-string/jumbo v4, "Telenor"

    const/16 v1, 0xf2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x71

    aput-object v0, v6, v1

    .line 276
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "NetCom"

    const-string/jumbo v4, "NetCom GSM"

    const/16 v1, 0xf2

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x72

    aput-object v0, v6, v1

    .line 277
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Network Norway"

    const-string/jumbo v4, "Network Norway"

    const/16 v1, 0xf2

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x73

    aput-object v0, v6, v1

    .line 278
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Jernbaneverket AS"

    const-string/jumbo v4, "Jernbaneverket AS"

    const/16 v1, 0xf2

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x74

    aput-object v0, v6, v1

    .line 283
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DNA"

    const-string/jumbo v4, "DNA Oy"

    const/16 v1, 0xf4

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x75

    aput-object v0, v6, v1

    .line 284
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Elisa"

    const-string/jumbo v4, "Elisa Oyj"

    const/16 v1, 0xf4

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x76

    aput-object v0, v6, v1

    .line 285
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DNA Oy"

    const-string/jumbo v4, "DNA Oy"

    const/16 v1, 0xf4

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x77

    aput-object v0, v6, v1

    .line 286
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AMT"

    const-string/jumbo v4, "Alands Mobiltelefon"

    const/16 v1, 0xf4

    const/16 v2, 0xe

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x78

    aput-object v0, v6, v1

    .line 287
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Sonera"

    const-string/jumbo v4, "TeliaSonera Finland Oyj"

    const/16 v1, 0xf4

    const/16 v2, 0x5b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x79

    aput-object v0, v6, v1

    .line 292
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Omnitel"

    const-string/jumbo v4, "Omnitel"

    const/16 v1, 0xf6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x7a

    aput-object v0, v6, v1

    .line 293
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BITE"

    const-string/jumbo v4, "UAB Bite Lietuva"

    const/16 v1, 0xf6

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x7b

    aput-object v0, v6, v1

    .line 294
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tele 2"

    const-string/jumbo v4, "Tele 2"

    const/16 v1, 0xf6

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x7c

    aput-object v0, v6, v1

    .line 299
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "LMT"

    const-string/jumbo v4, "Latvian Mobile Telephone"

    const/16 v1, 0xf7

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x7d

    aput-object v0, v6, v1

    .line 300
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tele2"

    const-string/jumbo v4, "Tele2"

    const/16 v1, 0xf7

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x7e

    aput-object v0, v6, v1

    .line 301
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Bite"

    const-string/jumbo v4, "Bite Latvija"

    const/16 v1, 0xf7

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x7f

    aput-object v0, v6, v1

    .line 306
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "EMT"

    const-string/jumbo v4, "Estonian Mobile Telecom"

    const/16 v1, 0xf8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x80

    aput-object v0, v6, v1

    .line 307
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Elisa"

    const-string/jumbo v4, "Elisa Eesti"

    const/16 v1, 0xf8

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x81

    aput-object v0, v6, v1

    .line 308
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tele 2"

    const-string/jumbo v4, "Tele 2 Eesti"

    const/16 v1, 0xf8

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x82

    aput-object v0, v6, v1

    .line 313
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTS"

    const-string/jumbo v4, "Mobile Telesystems"

    const/16 v1, 0xfa

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x83

    aput-object v0, v6, v1

    .line 314
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MegaFon"

    const-string/jumbo v4, "MegaFon OJSC"

    const/16 v1, 0xfa

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x84

    aput-object v0, v6, v1

    .line 315
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "NCC"

    const-string/jumbo v4, "Nizhegorodskaya Cellular Communications"

    const/16 v1, 0xfa

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x85

    aput-object v0, v6, v1

    .line 316
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ETK"

    const-string/jumbo v4, "Yeniseytelecom"

    const/16 v1, 0xfa

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x86

    aput-object v0, v6, v1

    .line 317
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SMARTS"

    const-string/jumbo v4, "Zao SMARTS"

    const/16 v1, 0xfa

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x87

    aput-object v0, v6, v1

    .line 318
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Baykalwstern"

    .line 319
    const-string/jumbo v4, "Baykal Westcom/New Telephone Company/Far Eastern Cellular"

    .line 318
    const/16 v1, 0xfa

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x88

    aput-object v0, v6, v1

    .line 320
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SMARTS"

    const-string/jumbo v4, "SMARTS Ufa"

    const/16 v1, 0xfa

    const/16 v2, 0xe

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x89

    aput-object v0, v6, v1

    .line 321
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "NTC"

    const-string/jumbo v4, "New Telephone Company"

    const/16 v1, 0xfa

    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x8a

    aput-object v0, v6, v1

    .line 322
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Utel"

    const-string/jumbo v4, "JSC Uralsvyazinform"

    const/16 v1, 0xfa

    const/16 v2, 0x11

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x8b

    aput-object v0, v6, v1

    .line 323
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "INDIGO"

    const-string/jumbo v4, "INDIGO"

    const/16 v1, 0xfa

    const/16 v2, 0x13

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x8c

    aput-object v0, v6, v1

    .line 324
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tele2"

    const-string/jumbo v4, "Tele2"

    const/16 v1, 0xfa

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x8d

    aput-object v0, v6, v1

    .line 325
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobicom - Novosibirsk"

    const-string/jumbo v4, "Mobicom - Novosibirsk"

    const/16 v1, 0xfa

    const/16 v2, 0x17

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x8e

    aput-object v0, v6, v1

    .line 326
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Utel"

    const-string/jumbo v4, "Uralsvyazinform"

    const/16 v1, 0xfa

    const/16 v2, 0x27

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x8f

    aput-object v0, v6, v1

    .line 327
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Beeline"

    const-string/jumbo v4, "OJSC VimpelCom"

    const/16 v1, 0xfa

    const/16 v2, 0x63

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x90

    aput-object v0, v6, v1

    .line 332
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTS"

    const-string/jumbo v4, "Ukrainian Mobile Communications"

    const/16 v1, 0xff

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x91

    aput-object v0, v6, v1

    .line 333
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Beeline"

    const-string/jumbo v4, "Ukrainian Radio Systems"

    const/16 v1, 0xff

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x92

    aput-object v0, v6, v1

    .line 334
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Kyivstar"

    const-string/jumbo v4, "Kyivstar GSM JSC"

    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x93

    aput-object v0, v6, v1

    .line 335
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Golden Telecom"

    const-string/jumbo v4, "Golden Telecom"

    const/16 v1, 0xff

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x94

    aput-object v0, v6, v1

    .line 336
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "life:)"

    const-string/jumbo v4, "Astelit"

    const/16 v1, 0xff

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x95

    aput-object v0, v6, v1

    .line 337
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Utel"

    const-string/jumbo v4, "Ukrtelecom"

    const/16 v1, 0xff

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x96

    aput-object v0, v6, v1

    .line 342
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Velcom"

    const-string/jumbo v4, "Velcom"

    const/16 v1, 0x101

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x97

    aput-object v0, v6, v1

    .line 343
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTS"

    const-string/jumbo v4, "JLLC Mobile TeleSystems"

    const/16 v1, 0x101

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x98

    aput-object v0, v6, v1

    .line 344
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "life:)"

    const-string/jumbo v4, "Belarussian Telecommunications Network"

    const/16 v1, 0x101

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x99

    aput-object v0, v6, v1

    .line 349
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Moldova"

    const/16 v1, 0x103

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x9a

    aput-object v0, v6, v1

    .line 350
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Moldcell"

    const-string/jumbo v4, "Moldcell"

    const/16 v1, 0x103

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x9b

    aput-object v0, v6, v1

    .line 351
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Eventis"

    const-string/jumbo v4, "Eventis Telecom"

    const/16 v1, 0x103

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x9c

    aput-object v0, v6, v1

    .line 356
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Plus"

    const-string/jumbo v4, "Polkomtel"

    const/16 v1, 0x104

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x9d

    aput-object v0, v6, v1

    .line 357
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Era"

    const-string/jumbo v4, "Polska Telefonia Cyfrowa (PTC)"

    const/16 v1, 0x104

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x9e

    aput-object v0, v6, v1

    .line 358
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "PTK Centertel"

    const/16 v1, 0x104

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x9f

    aput-object v0, v6, v1

    .line 359
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Play"

    const-string/jumbo v4, "P4 Sp. zo.o"

    const/16 v1, 0x104

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa0

    aput-object v0, v6, v1

    .line 360
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cyfrowy Polsat"

    const-string/jumbo v4, "Cyfrowy Polsat"

    const/16 v1, 0x104

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa1

    aput-object v0, v6, v1

    .line 361
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Sferia"

    const-string/jumbo v4, "Sferia S.A."

    const/16 v1, 0x104

    const/16 v2, 0xe

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa2

    aput-object v0, v6, v1

    .line 366
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile"

    const/16 v1, 0x106

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa3

    aput-object v0, v6, v1

    .line 367
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone.de"

    const-string/jumbo v4, "Vodafone.de"

    const/16 v1, 0x106

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa4

    aput-object v0, v6, v1

    .line 368
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "E-Plus"

    const-string/jumbo v4, "E-Plus Mobilfunk"

    const/16 v1, 0x106

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa5

    aput-object v0, v6, v1

    .line 369
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x106

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa6

    aput-object v0, v6, v1

    .line 370
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "E-Plus"

    const-string/jumbo v4, "E-Plus Mobilfunk"

    const/16 v1, 0x106

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa7

    aput-object v0, v6, v1

    .line 371
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile"

    const/16 v1, 0x106

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa8

    aput-object v0, v6, v1

    .line 372
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "O2"

    const-string/jumbo v4, "O2 (Germany) GmbH & Co. OHG"

    const/16 v1, 0x106

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xa9

    aput-object v0, v6, v1

    .line 373
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "O2"

    const-string/jumbo v4, "O2"

    const/16 v1, 0x106

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xaa

    aput-object v0, v6, v1

    .line 374
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x106

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xab

    aput-object v0, v6, v1

    .line 375
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Arcor AG & Co"

    const-string/jumbo v4, "Arcor AG * Co"

    const/16 v1, 0x106

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xac

    aput-object v0, v6, v1

    .line 376
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "O2"

    const-string/jumbo v4, "O2"

    const/16 v1, 0x106

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xad

    aput-object v0, v6, v1

    .line 377
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airdata"

    const-string/jumbo v4, "Airdata"

    const/16 v1, 0x106

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xae

    aput-object v0, v6, v1

    .line 378
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DB Telematik"

    const-string/jumbo v4, "DB Telematik"

    const/16 v1, 0x106

    const/16 v2, 0x3c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xaf

    aput-object v0, v6, v1

    .line 379
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Siemens AG"

    const-string/jumbo v4, "Siemens AG"

    const/16 v1, 0x106

    const/16 v2, 0x4c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb0

    aput-object v0, v6, v1

    .line 380
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "E-Plus"

    const-string/jumbo v4, "E-Plus"

    const/16 v1, 0x106

    const/16 v2, 0x4d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb1

    aput-object v0, v6, v1

    .line 385
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "GibTel"

    const-string/jumbo v4, "Gibraltar Telecoms"

    const/16 v1, 0x10a

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb2

    aput-object v0, v6, v1

    .line 390
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Portugal"

    const/16 v1, 0x10c

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb3

    aput-object v0, v6, v1

    .line 391
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Optimus"

    const-string/jumbo v4, "Sonaecom - Servicos de Comunicacoes, S.A."

    const/16 v1, 0x10c

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb4

    aput-object v0, v6, v1

    .line 392
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TMN"

    const-string/jumbo v4, "Telecomunicacoes Moveis Nacionais"

    const/16 v1, 0x10c

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb5

    aput-object v0, v6, v1

    .line 397
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "LuxGSM"

    const-string/jumbo v4, "P&T Luxembourg"

    const/16 v1, 0x10e

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb6

    aput-object v0, v6, v1

    .line 398
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tango"

    const-string/jumbo v4, "Tango SA"

    const/16 v1, 0x10e

    const/16 v2, 0x4d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb7

    aput-object v0, v6, v1

    .line 399
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Voxmobile"

    const-string/jumbo v4, "VOXmobile S.A"

    const/16 v1, 0x10e

    const/16 v2, 0x63

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb8

    aput-object v0, v6, v1

    .line 404
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Ireland"

    const/16 v1, 0x110

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xb9

    aput-object v0, v6, v1

    .line 405
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "O2"

    const-string/jumbo v4, "O2 Ireland"

    const/16 v1, 0x110

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xba

    aput-object v0, v6, v1

    .line 406
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Meteor"

    const-string/jumbo v4, "Meteor"

    const/16 v1, 0x110

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xbb

    aput-object v0, v6, v1

    .line 407
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "Hutchison 3G IReland limited"

    const/16 v1, 0x110

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xbc

    aput-object v0, v6, v1

    .line 412
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Siminn"

    const-string/jumbo v4, "Iceland Telecom"

    const/16 v1, 0x112

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xbd

    aput-object v0, v6, v1

    .line 413
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "iOg fjarskipti hf"

    const/16 v1, 0x112

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xbe

    aput-object v0, v6, v1

    .line 414
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Viking"

    const-string/jumbo v4, "IMC Island ehf"

    const/16 v1, 0x112

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xbf

    aput-object v0, v6, v1

    .line 415
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "IceCell"

    const-string/jumbo v4, "IceCell ehf"

    const/16 v1, 0x112

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc0

    aput-object v0, v6, v1

    .line 416
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Nova"

    const-string/jumbo v4, "Nova ehf"

    const/16 v1, 0x112

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc1

    aput-object v0, v6, v1

    .line 421
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AMC"

    const-string/jumbo v4, "Albanian Mobile Communications"

    const/16 v1, 0x114

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc2

    aput-object v0, v6, v1

    .line 422
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Albania"

    const/16 v1, 0x114

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc3

    aput-object v0, v6, v1

    .line 423
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Eagle Mobile"

    const-string/jumbo v4, "Eagle Mobile"

    const/16 v1, 0x114

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc4

    aput-object v0, v6, v1

    .line 428
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Malta"

    const/16 v1, 0x116

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc5

    aput-object v0, v6, v1

    .line 429
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "GO"

    const-string/jumbo v4, "Mobisle Communications Limited"

    const/16 v1, 0x116

    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc6

    aput-object v0, v6, v1

    .line 430
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Melita"

    const-string/jumbo v4, "Melita Mobile Ltd. (3G Telecommunictaions Limited"

    const/16 v1, 0x116

    const/16 v2, 0x4d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc7

    aput-object v0, v6, v1

    .line 435
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cytamobile-Vodafone"

    const-string/jumbo v4, "Cyprus Telcommunications Auth"

    const/16 v1, 0x118

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc8

    aput-object v0, v6, v1

    .line 436
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "Areeba Ltde"

    const/16 v1, 0x118

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xc9

    aput-object v0, v6, v1

    .line 441
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Geocell"

    const-string/jumbo v4, "Geocell Limited"

    const/16 v1, 0x11a

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xca

    aput-object v0, v6, v1

    .line 442
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Magti"

    const-string/jumbo v4, "Magticom GSM"

    const/16 v1, 0x11a

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xcb

    aput-object v0, v6, v1

    .line 443
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Beeline"

    const-string/jumbo v4, "Mobitel LLC"

    const/16 v1, 0x11a

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xcc

    aput-object v0, v6, v1

    .line 444
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aquafon"

    const-string/jumbo v4, "Aquafon"

    const/16 v1, 0x11a

    const/16 v2, 0x43

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xcd

    aput-object v0, v6, v1

    .line 445
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "A-Mobile"

    const-string/jumbo v4, "A-Mobile"

    const/16 v1, 0x11a

    const/16 v2, 0x58

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xce

    aput-object v0, v6, v1

    .line 450
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Beeline"

    const-string/jumbo v4, "ArmenTel"

    const/16 v1, 0x11b

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xcf

    aput-object v0, v6, v1

    .line 451
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "VivaCell-MTS"

    const-string/jumbo v4, "K Telecom CJSC"

    const/16 v1, 0x11b

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd0

    aput-object v0, v6, v1

    .line 456
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "M-TEL"

    const-string/jumbo v4, "Mobiltel"

    const/16 v1, 0x11c

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd1

    aput-object v0, v6, v1

    .line 457
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vivatel"

    const-string/jumbo v4, "BTC"

    const/16 v1, 0x11c

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd2

    aput-object v0, v6, v1

    .line 458
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "GLOBUL"

    const-string/jumbo v4, "Cosmo Bulgaria Mobile"

    const/16 v1, 0x11c

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd3

    aput-object v0, v6, v1

    .line 463
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Turkcell"

    const-string/jumbo v4, "Turkcell lletisim Hizmetleri A.S."

    const/16 v1, 0x11e

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd4

    aput-object v0, v6, v1

    .line 464
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Turkey"

    const/16 v1, 0x11e

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd5

    aput-object v0, v6, v1

    .line 465
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Avea"

    const-string/jumbo v4, "Avea"

    const/16 v1, 0x11e

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd6

    aput-object v0, v6, v1

    .line 470
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Faroese"

    const-string/jumbo v4, "Faroese Telecom"

    const/16 v1, 0x120

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd7

    aput-object v0, v6, v1

    .line 471
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Faroe Islands"

    const/16 v1, 0x120

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd8

    aput-object v0, v6, v1

    .line 476
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TELE Greenland A/S"

    const-string/jumbo v4, "Tele Greenland A/S"

    const/16 v1, 0x122

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xd9

    aput-object v0, v6, v1

    .line 481
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "PRIMA"

    const-string/jumbo v4, "San Marino Telecom"

    const/16 v1, 0x124

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xda

    aput-object v0, v6, v1

    .line 486
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Si.mobil"

    const-string/jumbo v4, "SI.MOBIL d.d"

    const/16 v1, 0x125

    const/16 v2, 0x28

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xdb

    aput-object v0, v6, v1

    .line 487
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Si.mobil"

    const-string/jumbo v4, "Mobitel D.D."

    const/16 v1, 0x125

    const/16 v2, 0x29

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xdc

    aput-object v0, v6, v1

    .line 488
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-2"

    const-string/jumbo v4, "T-2 d.o.o."

    const/16 v1, 0x125

    const/16 v2, 0x40

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xdd

    aput-object v0, v6, v1

    .line 489
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tusmobil"

    const-string/jumbo v4, "Tusmobil d.o.o."

    const/16 v1, 0x125

    const/16 v2, 0x46

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xde

    aput-object v0, v6, v1

    .line 494
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile Makedonija"

    const/16 v1, 0x126

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xdf

    aput-object v0, v6, v1

    .line 495
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cosmofon"

    const-string/jumbo v4, "Cosmofon"

    const/16 v1, 0x126

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe0

    aput-object v0, v6, v1

    .line 496
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "VIP Operator"

    const-string/jumbo v4, "VIP Operator"

    const/16 v1, 0x126

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe1

    aput-object v0, v6, v1

    .line 501
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Swisscom"

    const-string/jumbo v4, "Swisscom Schweiz AG"

    const/16 v1, 0x127

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe2

    aput-object v0, v6, v1

    .line 502
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Liechtenstein AG"

    const/16 v1, 0x127

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe3

    aput-object v0, v6, v1

    .line 503
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "FL1"

    const-string/jumbo v4, "Mobilkom Liechtenstein AG"

    const/16 v1, 0x127

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe4

    aput-object v0, v6, v1

    .line 504
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tele 2"

    const-string/jumbo v4, "Belgacom"

    const/16 v1, 0x127

    const/16 v2, 0x4d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe5

    aput-object v0, v6, v1

    .line 509
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ProMonte"

    const-string/jumbo v4, "ProMonte GSM"

    const/16 v1, 0x129

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe6

    aput-object v0, v6, v1

    .line 510
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile Montenegro LLC"

    const/16 v1, 0x129

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe7

    aput-object v0, v6, v1

    .line 511
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "m:tel CG"

    const-string/jumbo v4, "MTEL CG"

    const/16 v1, 0x129

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe8

    aput-object v0, v6, v1

    .line 516
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Rogers"

    const-string/jumbo v4, "Rogers"

    const/16 v1, 0x12e

    const/16 v2, 0x48

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xe9

    aput-object v0, v6, v1

    .line 517
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telus"

    const-string/jumbo v4, "Telus"

    const/16 v1, 0x12e

    const/16 v2, 0x56

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xea

    aput-object v0, v6, v1

    .line 518
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telus Mobility"

    const-string/jumbo v4, "Telus Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x169

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xeb

    aput-object v0, v6, v1

    .line 519
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Fido"

    const-string/jumbo v4, "Fido"

    const/16 v1, 0x12e

    const/16 v2, 0x172

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xec

    aput-object v0, v6, v1

    .line 520
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ICE Wireless"

    const-string/jumbo v4, "ICE Wireless"

    const/16 v1, 0x12e

    const/16 v2, 0x26c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xed

    aput-object v0, v6, v1

    .line 521
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Bell Mobility"

    const-string/jumbo v4, "Bell Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x280

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xee

    aput-object v0, v6, v1

    .line 522
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BC Tel Mobility"

    const-string/jumbo v4, "BC Tel Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x28c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xef

    aput-object v0, v6, v1

    .line 523
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telus Mobility"

    const-string/jumbo v4, "Telus Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x28d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf0

    aput-object v0, v6, v1

    .line 524
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTS Mobility"

    const-string/jumbo v4, "MTS Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x28f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf1

    aput-object v0, v6, v1

    .line 525
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TBay Mobility"

    const-string/jumbo v4, "TBay Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x290

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf2

    aput-object v0, v6, v1

    .line 526
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telus Mobility"

    const-string/jumbo v4, "Telus Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x291

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf3

    aput-object v0, v6, v1

    .line 527
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SaskTel Mobility"

    const-string/jumbo v4, "SaskTel Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x2a8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf4

    aput-object v0, v6, v1

    .line 528
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MB Tel Mobility"

    const-string/jumbo v4, "MB Tel Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x2bd

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf5

    aput-object v0, v6, v1

    .line 529
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MT&T Mobility"

    const-string/jumbo v4, "MT&T Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x2be

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf6

    aput-object v0, v6, v1

    .line 530
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "New Tel Mobility"

    const-string/jumbo v4, "New Tel Mobility"

    const/16 v1, 0x12e

    const/16 v2, 0x2bf

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf7

    aput-object v0, v6, v1

    .line 531
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Rogers Wireless"

    const-string/jumbo v4, "Rogers Wireless"

    const/16 v1, 0x12e

    const/16 v2, 0x2d0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf8

    aput-object v0, v6, v1

    .line 536
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Ameris"

    const-string/jumbo v4, "St. Pierre-et-Miquelon Telecom"

    const/16 v1, 0x134

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xf9

    aput-object v0, v6, v1

    .line 541
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Verizon"

    const-string/jumbo v4, "Verizon"

    const/16 v1, 0x136

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xfa

    aput-object v0, v6, v1

    .line 542
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Verizon Wireless"

    const-string/jumbo v4, "Verizon Wireless"

    const/16 v1, 0x136

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xfb

    aput-object v0, v6, v1

    .line 543
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Verizon Wireless"

    const-string/jumbo v4, "Verizon Wireless"

    const/16 v1, 0x136

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xfc

    aput-object v0, v6, v1

    .line 544
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Verizon"

    const-string/jumbo v4, "Verizon"

    const/16 v1, 0x136

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xfd

    aput-object v0, v6, v1

    .line 545
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cricket Communications"

    const-string/jumbo v4, "Cricket Communications"

    const/16 v1, 0x136

    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xfe

    aput-object v0, v6, v1

    .line 546
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Union Telephony Company"

    const-string/jumbo v4, "Union Telephony Company"

    const/16 v1, 0x136

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0xff

    aput-object v0, v6, v1

    .line 547
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile"

    const/16 v1, 0x136

    const/16 v2, 0x1a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x100

    aput-object v0, v6, v1

    .line 548
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Centennial"

    const-string/jumbo v4, "Centennial Communications"

    const/16 v1, 0x136

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x101

    aput-object v0, v6, v1

    .line 549
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Gumcell_Saipan"

    const-string/jumbo v4, "Gumcell_Saipan"

    const/16 v1, 0x136

    const/16 v2, 0x25

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x102

    aput-object v0, v6, v1

    .line 550
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T Mobility"

    const/16 v1, 0x136

    const/16 v2, 0x26

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x103

    aput-object v0, v6, v1

    .line 551
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Concho"

    const-string/jumbo v4, "Concho Cellular Telephony Co., Inc."

    const/16 v1, 0x136

    const/16 v2, 0x28

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x104

    aput-object v0, v6, v1

    .line 552
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SIMMETRY"

    const-string/jumbo v4, "TMP Corp"

    const/16 v1, 0x136

    const/16 v2, 0x2e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x105

    aput-object v0, v6, v1

    .line 553
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Virgin Mobile"

    const-string/jumbo v4, "Virgin Mobile"

    const/16 v1, 0x136

    const/16 v2, 0x35

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x106

    aput-object v0, v6, v1

    .line 554
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T"

    const/16 v1, 0x136

    const/16 v2, 0x46

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x107

    aput-object v0, v6, v1

    .line 555
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Corr"

    const-string/jumbo v4, "Corr Wireless Communications LLC"

    const/16 v1, 0x136

    const/16 v2, 0x50

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x108

    aput-object v0, v6, v1

    .line 556
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T"

    const/16 v1, 0x136

    const/16 v2, 0x5a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x109

    aput-object v0, v6, v1

    .line 557
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Plateau Wireless"

    const-string/jumbo v4, "New Mexico RSA 4 East Ltd. Partnership"

    const/16 v1, 0x136

    const/16 v2, 0x64

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x10a

    aput-object v0, v6, v1

    .line 558
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "PTI Pacifica"

    const-string/jumbo v4, "PTI Pacifica Inc."

    const/16 v1, 0x136

    const/16 v2, 0x6e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x10b

    aput-object v0, v6, v1

    .line 559
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Sprint"

    const-string/jumbo v4, "Sprint"

    const/16 v1, 0x136

    const/16 v2, 0x78

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x10c

    aput-object v0, v6, v1

    .line 560
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T"

    const/16 v1, 0x136

    const/16 v2, 0x96

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x10d

    aput-object v0, v6, v1

    .line 561
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T"

    const/16 v1, 0x136

    const/16 v2, 0xaa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x10e

    aput-object v0, v6, v1

    .line 562
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "West Cen"

    const-string/jumbo v4, "West Central"

    const/16 v1, 0x136

    const/16 v2, 0xb4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x10f

    aput-object v0, v6, v1

    .line 563
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Dutch Harbor"

    const-string/jumbo v4, "Alaska Wireless Communications, LLC"

    const/16 v1, 0x136

    const/16 v2, 0xbe

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x110

    aput-object v0, v6, v1

    .line 564
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "T-Mobile"

    const-string/jumbo v4, "T-Mobile"

    const/16 v1, 0x136

    const/16 v2, 0x104

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x111

    aput-object v0, v6, v1

    .line 565
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Get Mobile Inc"

    const-string/jumbo v4, "Get Mobile Inc"

    const/16 v1, 0x136

    const/16 v2, 0x12c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x112

    aput-object v0, v6, v1

    .line 566
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Farmers Wireless"

    const-string/jumbo v4, "Farmers Wireless"

    const/16 v1, 0x136

    const/16 v2, 0x137

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x113

    aput-object v0, v6, v1

    .line 567
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cell One"

    const-string/jumbo v4, "Cellular One"

    const/16 v1, 0x136

    const/16 v2, 0x14a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x114

    aput-object v0, v6, v1

    .line 568
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Westlink"

    const-string/jumbo v4, "Westlink Communications"

    const/16 v1, 0x136

    const/16 v2, 0x154

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x115

    aput-object v0, v6, v1

    .line 569
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T"

    const/16 v1, 0x136

    const/16 v2, 0x17c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x116

    aput-object v0, v6, v1

    .line 570
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "i CAN_GSM"

    const-string/jumbo v4, "Wave runner LLC (Guam)"

    const/16 v1, 0x136

    const/16 v2, 0x190

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x117

    aput-object v0, v6, v1

    .line 571
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T"

    const/16 v1, 0x136

    const/16 v2, 0x19a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x118

    aput-object v0, v6, v1

    .line 572
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cincinnati Bell"

    const-string/jumbo v4, "Cincinnati Bell Wireless"

    const/16 v1, 0x136

    const/16 v2, 0x1a4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x119

    aput-object v0, v6, v1

    .line 573
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Alaska Digitel"

    const-string/jumbo v4, "Alaska Digitel"

    const/16 v1, 0x136

    const/16 v2, 0x1ae

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x11a

    aput-object v0, v6, v1

    .line 574
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Viaero"

    const-string/jumbo v4, "Viaero Wireless"

    const/16 v1, 0x136

    const/16 v2, 0x1c2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x11b

    aput-object v0, v6, v1

    .line 575
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Simmetry"

    const-string/jumbo v4, "TMP Corporation"

    const/16 v1, 0x136

    const/16 v2, 0x1cc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x11c

    aput-object v0, v6, v1

    .line 576
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "nTelos"

    const-string/jumbo v4, "nTelos"

    const/16 v1, 0x136

    const/16 v2, 0x1d6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x11d

    aput-object v0, v6, v1

    .line 577
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AlltelWireless"

    const-string/jumbo v4, "AlltelWireless"

    const/16 v1, 0x136

    const/16 v2, 0x1f4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x11e

    aput-object v0, v6, v1

    .line 578
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Oklahoma Western"

    const-string/jumbo v4, "Oklahoma Western Telephone Company"

    const/16 v1, 0x136

    const/16 v2, 0x21c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x11f

    aput-object v0, v6, v1

    .line 579
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T"

    const/16 v1, 0x136

    const/16 v2, 0x230

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x120

    aput-object v0, v6, v1

    .line 580
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cellular One"

    const-string/jumbo v4, "MTPCS, LLC"

    const/16 v1, 0x136

    const/16 v2, 0x23a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x121

    aput-object v0, v6, v1

    .line 581
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Alltel"

    const-string/jumbo v4, "Alltel Communications Inc"

    const/16 v1, 0x136

    const/16 v2, 0x24e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x122

    aput-object v0, v6, v1

    .line 582
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Epic Touch"

    const-string/jumbo v4, "Elkhart Telephone Co."

    const/16 v1, 0x136

    const/16 v2, 0x262

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x123

    aput-object v0, v6, v1

    .line 583
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Coleman County Telecom"

    const-string/jumbo v4, "Coleman County Telecommunications"

    const/16 v1, 0x136

    const/16 v2, 0x26c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x124

    aput-object v0, v6, v1

    .line 584
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airadigim"

    const-string/jumbo v4, "Airadigim Communications"

    const/16 v1, 0x136

    const/16 v2, 0x280

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x125

    aput-object v0, v6, v1

    .line 585
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Jasper"

    const-string/jumbo v4, "Jasper wireless, inc"

    const/16 v1, 0x136

    const/16 v2, 0x28a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x126

    aput-object v0, v6, v1

    .line 586
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T"

    const/16 v1, 0x136

    const/16 v2, 0x2a8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x127

    aput-object v0, v6, v1

    .line 587
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "i wireless"

    const-string/jumbo v4, "lows Wireless Services"

    const/16 v1, 0x136

    const/16 v2, 0x302

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x128

    aput-object v0, v6, v1

    .line 588
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "PinPoint"

    const-string/jumbo v4, "PinPoint Communications"

    const/16 v1, 0x136

    const/16 v2, 0x316

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x129

    aput-object v0, v6, v1

    .line 589
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Caprock"

    const-string/jumbo v4, "Caprock Cellular"

    const/16 v1, 0x136

    const/16 v2, 0x33e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x12a

    aput-object v0, v6, v1

    .line 590
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aeris"

    const-string/jumbo v4, "Aeris Communications, Inc."

    const/16 v1, 0x136

    const/16 v2, 0x352

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x12b

    aput-object v0, v6, v1

    .line 591
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "PACE"

    const-string/jumbo v4, "Kaplan Telephone Company"

    const/16 v1, 0x136

    const/16 v2, 0x366

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x12c

    aput-object v0, v6, v1

    .line 592
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Advantage"

    const-string/jumbo v4, "Advantage Cellular Systems"

    const/16 v1, 0x136

    const/16 v2, 0x370

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x12d

    aput-object v0, v6, v1

    .line 593
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unicel"

    const-string/jumbo v4, "Rural cellular Corporation"

    const/16 v1, 0x136

    const/16 v2, 0x37a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x12e

    aput-object v0, v6, v1

    .line 594
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mid-Rivers Wireless"

    const-string/jumbo v4, "Mid-Rivers Wireless"

    const/16 v1, 0x136

    const/16 v2, 0x384

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x12f

    aput-object v0, v6, v1

    .line 595
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "First Cellular"

    const-string/jumbo v4, "First Cellular of Southern Illinois"

    const/16 v1, 0x136

    const/16 v2, 0x38e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x130

    aput-object v0, v6, v1

    .line 596
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "XIT Wireless"

    const-string/jumbo v4, "Texas RSA 1 dba XIT Cellular"

    const/16 v1, 0x136

    const/16 v2, 0x3b6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x131

    aput-object v0, v6, v1

    .line 597
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Globalstar"

    const-string/jumbo v4, "Globalstar"

    const/16 v1, 0x136

    const/16 v2, 0x3ca

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x132

    aput-object v0, v6, v1

    .line 598
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T"

    const/16 v1, 0x136

    const/16 v2, 0x3d4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x133

    aput-object v0, v6, v1

    .line 599
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mid-Tex Cellular"

    const-string/jumbo v4, "Mid-Tex Cellular"

    const/16 v1, 0x137

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x134

    aput-object v0, v6, v1

    .line 600
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Chariton Valley"

    const-string/jumbo v4, "Chariton Valley Communications"

    const/16 v1, 0x137

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x135

    aput-object v0, v6, v1

    .line 601
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Missouri RSA 5 Partnership"

    const-string/jumbo v4, "Missouri RSA 5 Partnership"

    const/16 v1, 0x137

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x136

    aput-object v0, v6, v1

    .line 602
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Indigo Wireless"

    const-string/jumbo v4, "Indigo Wireless"

    const/16 v1, 0x137

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x137

    aput-object v0, v6, v1

    .line 603
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Commnet Wireless"

    const-string/jumbo v4, "Commnet Wireless"

    const/16 v1, 0x137

    const/16 v2, 0x28

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x138

    aput-object v0, v6, v1

    .line 604
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Wikes Cellular"

    const-string/jumbo v4, "Wikes Cellular"

    const/16 v1, 0x137

    const/16 v2, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x139

    aput-object v0, v6, v1

    .line 605
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Farmers Cellular"

    const-string/jumbo v4, "Farmers Cellular Telephone"

    const/16 v1, 0x137

    const/16 v2, 0x3c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x13a

    aput-object v0, v6, v1

    .line 606
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Easterbrooke"

    const-string/jumbo v4, "Easterbrooke Cellular Corporation"

    const/16 v1, 0x137

    const/16 v2, 0x46

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x13b

    aput-object v0, v6, v1

    .line 607
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Pine Cellular"

    const-string/jumbo v4, "Pine Telephone Company"

    const/16 v1, 0x137

    const/16 v2, 0x50

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x13c

    aput-object v0, v6, v1

    .line 608
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Long Lines Wireless"

    const-string/jumbo v4, "Long Lines Wireless LLC"

    const/16 v1, 0x137

    const/16 v2, 0x5a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x13d

    aput-object v0, v6, v1

    .line 609
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "High Plains Wireless"

    const-string/jumbo v4, "High Plains Wireless"

    const/16 v1, 0x137

    const/16 v2, 0x64

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x13e

    aput-object v0, v6, v1

    .line 610
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "High Plains Wireless"

    const-string/jumbo v4, "High Plains Wireless"

    const/16 v1, 0x137

    const/16 v2, 0x6e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x13f

    aput-object v0, v6, v1

    .line 611
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cell One Amarillo"

    const-string/jumbo v4, "Cell One Amarillo"

    const/16 v1, 0x137

    const/16 v2, 0x82

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x140

    aput-object v0, v6, v1

    .line 612
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Wilkes Cellular"

    const-string/jumbo v4, "Wilkes Cellular"

    const/16 v1, 0x137

    const/16 v2, 0x96

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x141

    aput-object v0, v6, v1

    .line 613
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "PetroCom"

    const-string/jumbo v4, "Broadpoint Inc"

    const/16 v1, 0x137

    const/16 v2, 0xaa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x142

    aput-object v0, v6, v1

    .line 614
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AT&T"

    const-string/jumbo v4, "AT&T"

    const/16 v1, 0x137

    const/16 v2, 0xb4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x143

    aput-object v0, v6, v1

    .line 615
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Farmers Cellular"

    const-string/jumbo v4, "Farmers Cellular Telephone"

    const/16 v1, 0x137

    const/16 v2, 0xd2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x144

    aput-object v0, v6, v1

    .line 616
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "metroPCS"

    const-string/jumbo v4, "metroPCS"

    const/16 v1, 0x137

    const/16 v2, 0x294

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x145

    aput-object v0, v6, v1

    .line 621
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "Puerto Rico Telephony Company"

    const/16 v1, 0x14a

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x146

    aput-object v0, v6, v1

    .line 626
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telcel"

    const-string/jumbo v4, "America Movil"

    const/16 v1, 0x14e

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x147

    aput-object v0, v6, v1

    .line 627
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "movistar"

    const-string/jumbo v4, "Pegaso Comunicaciones y Sistemas"

    const/16 v1, 0x14e

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x148

    aput-object v0, v6, v1

    .line 632
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cable & Wireless"

    const-string/jumbo v4, "Cable & Wireless"

    const/16 v1, 0x152

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x149

    aput-object v0, v6, v1

    .line 633
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Digicel (Jamaica) Limited"

    const/16 v1, 0x152

    const/16 v2, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x14a

    aput-object v0, v6, v1

    .line 634
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "Oceanic Digital Jamaica Limited"

    const/16 v1, 0x152

    const/16 v2, 0x46

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x14b

    aput-object v0, v6, v1

    .line 639
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Caraibe Mobiles"

    const/16 v1, 0x154

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x14c

    aput-object v0, v6, v1

    .line 640
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Outremer"

    const-string/jumbo v4, "Outremer Telecom"

    const/16 v1, 0x154

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x14d

    aput-object v0, v6, v1

    .line 641
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Teleceli"

    const-string/jumbo v4, "Saint Martin et Saint Barthelemy Telcell Sarl"

    const/16 v1, 0x154

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x14e

    aput-object v0, v6, v1

    .line 642
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MIO GSM"

    const-string/jumbo v4, "Dauphin Telecom"

    const/16 v1, 0x154

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x14f

    aput-object v0, v6, v1

    .line 643
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "DIGICEL Antilles Franccaise Guyane"

    const/16 v1, 0x154

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x150

    aput-object v0, v6, v1

    .line 648
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "bmobile"

    const-string/jumbo v4, "cable &Wireless Barbados Ltd."

    const/16 v1, 0x156

    const/16 v2, 0x258

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x151

    aput-object v0, v6, v1

    .line 649
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Digicel (Jamaica) Limited"

    const/16 v1, 0x156

    const/16 v2, 0x2ee

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x152

    aput-object v0, v6, v1

    .line 654
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "APUA"

    const-string/jumbo v4, "Antigua Public Utilities Authority"

    const/16 v1, 0x158

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x153

    aput-object v0, v6, v1

    .line 655
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "bmobile"

    .line 656
    const-string/jumbo v4, "Cable & Wireless Caribbean Cellular (Antigua) Limited"

    .line 655
    const/16 v1, 0x158

    const/16 v2, 0x398

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x154

    aput-object v0, v6, v1

    .line 657
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Antigua Wireless Ventures Limited"

    const/16 v1, 0x158

    const/16 v2, 0x3a2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x155

    aput-object v0, v6, v1

    .line 662
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Digicel Cayman Ltd."

    const/16 v1, 0x15a

    const/16 v2, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x156

    aput-object v0, v6, v1

    .line 663
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cable & Wireless"

    .line 664
    const-string/jumbo v4, "Cable & Wireless (Caymand Islands) Limited"

    .line 663
    const/16 v1, 0x15a

    const/16 v2, 0x8c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x157

    aput-object v0, v6, v1

    .line 669
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cable & Wireless"

    const-string/jumbo v4, "Cable & Wireless (West Indies)"

    const/16 v1, 0x15c

    const/16 v2, 0xaa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x158

    aput-object v0, v6, v1

    .line 670
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Caribbean Cellular Telephone"

    const-string/jumbo v4, "Caribbean Cellular Telephone"

    const/16 v1, 0x15c

    const/16 v2, 0x23a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x159

    aput-object v0, v6, v1

    .line 675
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel Bermuda"

    .line 676
    const-string/jumbo v4, "Telecommunications (Bermuda & West Indies) Ltd"

    .line 675
    const/16 v1, 0x15e

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x15a

    aput-object v0, v6, v1

    .line 677
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobility"

    const-string/jumbo v4, "M3 wireless"

    const/16 v1, 0x15e

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x15b

    aput-object v0, v6, v1

    .line 678
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Digicel"

    const/16 v1, 0x15e

    const/16 v2, 0x26

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x15c

    aput-object v0, v6, v1

    .line 683
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Digicel Grenada Ltd."

    const/16 v1, 0x160

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x15d

    aput-object v0, v6, v1

    .line 684
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cable & Wireless"

    const-string/jumbo v4, "Cable & Wireless Grenada Ltd."

    const/16 v1, 0x160

    const/16 v2, 0x6e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x15e

    aput-object v0, v6, v1

    .line 689
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telcell"

    const-string/jumbo v4, "Telcell N.V."

    const/16 v1, 0x16a

    const/16 v2, 0x33

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x15f

    aput-object v0, v6, v1

    .line 690
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Curacao Telecom N.V."

    const/16 v1, 0x16a

    const/16 v2, 0x45

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x160

    aput-object v0, v6, v1

    .line 691
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "UTS"

    const-string/jumbo v4, "Setel NV"

    const/16 v1, 0x16a

    const/16 v2, 0x5b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x161

    aput-object v0, v6, v1

    .line 696
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SETAR"

    const-string/jumbo v4, "SETAR (Servicio di Telecommunication diAruba"

    const/16 v1, 0x16b

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x162

    aput-object v0, v6, v1

    .line 697
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicell"

    const-string/jumbo v4, "Digicell"

    const/16 v1, 0x16b

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x163

    aput-object v0, v6, v1

    .line 702
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BaTelCo"

    const-string/jumbo v4, "The Bahamas Telecommunications Company Ltd"

    const/16 v1, 0x16c

    const/16 v2, 0x186

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x164

    aput-object v0, v6, v1

    .line 707
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Weblinks Limited"

    const-string/jumbo v4, "Weblinks Limited"

    const/16 v1, 0x16d

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x165

    aput-object v0, v6, v1

    .line 712
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ETECSA"

    const-string/jumbo v4, "Empresa de Telecomunicaciones de Cuba, SA"

    const/16 v1, 0x170

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x166

    aput-object v0, v6, v1

    .line 717
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Dominicana"

    const/16 v1, 0x172

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x167

    aput-object v0, v6, v1

    .line 718
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "Compania Dominicana de Telefonos, C por"

    const/16 v1, 0x172

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x168

    aput-object v0, v6, v1

    .line 719
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ViVa"

    const-string/jumbo v4, "Centennial Dominicana"

    const/16 v1, 0x172

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x169

    aput-object v0, v6, v1

    .line 724
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Comcel / Voila"

    const-string/jumbo v4, "Comcel / Voila"

    const/16 v1, 0x174

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x16a

    aput-object v0, v6, v1

    .line 725
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Digicel"

    const/16 v1, 0x174

    const/16 v2, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x16b

    aput-object v0, v6, v1

    .line 730
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "bmobile"

    const-string/jumbo v4, "TSTT"

    const/16 v1, 0x176

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x16c

    aput-object v0, v6, v1

    .line 731
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Digicel"

    const/16 v1, 0x176

    const/16 v2, 0xd

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x16d

    aput-object v0, v6, v1

    .line 736
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Azercell"

    const-string/jumbo v4, "Azercell"

    const/16 v1, 0x190

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x16e

    aput-object v0, v6, v1

    .line 737
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Bakcell"

    const-string/jumbo v4, "Bakcell"

    const/16 v1, 0x190

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x16f

    aput-object v0, v6, v1

    .line 738
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Nar Mobile"

    const-string/jumbo v4, "Azerfon"

    const/16 v1, 0x190

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x170

    aput-object v0, v6, v1

    .line 743
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Beeline"

    const-string/jumbo v4, "KaR-TeL LLP"

    const/16 v1, 0x191

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x171

    aput-object v0, v6, v1

    .line 744
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "K\'Cell"

    const-string/jumbo v4, "GSM Kazakhstan Ltdx."

    const/16 v1, 0x191

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x172

    aput-object v0, v6, v1

    .line 745
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobile Telecom Service"

    const-string/jumbo v4, "Mobile Telecom Service LLP"

    const/16 v1, 0x191

    const/16 v2, 0x4d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x173

    aput-object v0, v6, v1

    .line 750
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "B-Mobile"

    const-string/jumbo v4, "B-Mobile"

    const/16 v1, 0x192

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x174

    aput-object v0, v6, v1

    .line 751
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TashiCell"

    const-string/jumbo v4, "Tashi InfoComm Limited"

    const/16 v1, 0x192

    const/16 v2, 0x4d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x175

    aput-object v0, v6, v1

    .line 756
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance"

    const-string/jumbo v4, "Reliance"

    const/16 v1, 0x194

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x176

    aput-object v0, v6, v1

    .line 757
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Haryana"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x177

    aput-object v0, v6, v1

    .line 758
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Punjab"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x178

    aput-object v0, v6, v1

    .line 759
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Himachal Pradesh"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x179

    aput-object v0, v6, v1

    .line 760
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Delhi"

    const-string/jumbo v4, "Idea cellular Limited "

    const/16 v1, 0x194

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x17a

    aput-object v0, v6, v1

    .line 761
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Gujarat"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x17b

    aput-object v0, v6, v1

    .line 762
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Andhra Pradesh"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x194

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x17c

    aput-object v0, v6, v1

    .line 763
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Assam"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x194

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x17d

    aput-object v0, v6, v1

    .line 764
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel Delhi"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x17e

    aput-object v0, v6, v1

    .line 765
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Delhi"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x17f

    aput-object v0, v6, v1

    .line 766
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Haryana"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x194

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x180

    aput-object v0, v6, v1

    .line 767
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Andhra Pradesh"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0xd

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x181

    aput-object v0, v6, v1

    .line 768
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Spice Telecom - Punjab"

    const-string/jumbo v4, "Spice Communications Limited"

    const/16 v1, 0x194

    const/16 v2, 0xe

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x182

    aput-object v0, v6, v1

    .line 769
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Uttar Pradesh (East)"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x183

    aput-object v0, v6, v1

    .line 770
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - North East"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x184

    aput-object v0, v6, v1

    .line 771
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - West Bengal"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x194

    const/16 v2, 0x11

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x185

    aput-object v0, v6, v1

    .line 772
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Himachal Pradesh"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x194

    const/16 v2, 0x12

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x186

    aput-object v0, v6, v1

    .line 773
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Kerala"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x194

    const/16 v2, 0x13

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x187

    aput-object v0, v6, v1

    .line 774
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Mumbai"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x188

    aput-object v0, v6, v1

    .line 775
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BPL Mobile Mumbai"

    const-string/jumbo v4, "BPL Mobile Mumbai"

    const/16 v1, 0x194

    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x189

    aput-object v0, v6, v1

    .line 776
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Maharashtra"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x194

    const/16 v2, 0x16

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x18a

    aput-object v0, v6, v1

    .line 777
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Gujarat"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x194

    const/16 v2, 0x18

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x18b

    aput-object v0, v6, v1

    .line 778
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Bihar"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x194

    const/16 v2, 0x19

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x18c

    aput-object v0, v6, v1

    .line 779
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Maharashtra"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0x1b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x18d

    aput-object v0, v6, v1

    .line 780
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Orissa"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x194

    const/16 v2, 0x1c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x18e

    aput-object v0, v6, v1

    .line 781
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Assam"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x194

    const/16 v2, 0x1d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x18f

    aput-object v0, v6, v1

    .line 782
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Kolkata"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x190

    aput-object v0, v6, v1

    .line 783
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Kolkata"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x1f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x191

    aput-object v0, v6, v1

    .line 784
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - North East"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x194

    const/16 v2, 0x21

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x192

    aput-object v0, v6, v1

    .line 785
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Haryana"

    const-string/jumbo v4, "Bharat Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x22

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x193

    aput-object v0, v6, v1

    .line 786
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Himachal Pradesh"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x194

    const/16 v2, 0x23

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x194

    aput-object v0, v6, v1

    .line 787
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Bihar"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x194

    const/16 v2, 0x24

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x195

    aput-object v0, v6, v1

    .line 788
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Jammu & Kashmir"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x194

    const/16 v2, 0x25

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x196

    aput-object v0, v6, v1

    .line 789
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Assam"

    const-string/jumbo v4, "Bharat Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x26

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x197

    aput-object v0, v6, v1

    .line 790
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Chennai"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x28

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x198

    aput-object v0, v6, v1

    .line 791
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Chennai"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x194

    const/16 v2, 0x29

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x199

    aput-object v0, v6, v1

    .line 792
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Tamilnadu"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x194

    const/16 v2, 0x2a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x19a

    aput-object v0, v6, v1

    .line 793
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Tamilnadu"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0x2b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x19b

    aput-object v0, v6, v1

    .line 794
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Spice Telecom - Karnataka"

    const-string/jumbo v4, "Spice Communications Limited"

    const/16 v1, 0x194

    const/16 v2, 0x2c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x19c

    aput-object v0, v6, v1

    .line 795
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Kerala"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0x2e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x19d

    aput-object v0, v6, v1

    .line 796
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Andhra Pradesh"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x31

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x19e

    aput-object v0, v6, v1

    .line 797
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - North East"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x194

    const/16 v2, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x19f

    aput-object v0, v6, v1

    .line 798
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Himachal Pradeshl"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x33

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a0

    aput-object v0, v6, v1

    .line 799
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Orissa"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x194

    const/16 v2, 0x34

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a1

    aput-object v0, v6, v1

    .line 800
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Punjab"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x35

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a2

    aput-object v0, v6, v1

    .line 801
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Uttar Pradesh (West)"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x36

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a3

    aput-object v0, v6, v1

    .line 802
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Uttar Pradesh (East)"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x37

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a4

    aput-object v0, v6, v1

    .line 803
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Uttar Pradesh West"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x194

    const/16 v2, 0x38

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a5

    aput-object v0, v6, v1

    .line 804
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Gujarat"

    const-string/jumbo v4, "Bharat Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x39

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a6

    aput-object v0, v6, v1

    .line 805
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Madhya Pradesh"

    const-string/jumbo v4, "Bharat Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x3a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a7

    aput-object v0, v6, v1

    .line 806
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Rajasthan"

    const-string/jumbo v4, "Bharat Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x3b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a8

    aput-object v0, v6, v1

    .line 807
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Rajasthan"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0x3c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1a9

    aput-object v0, v6, v1

    .line 808
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Jammu & Kashmir"

    const-string/jumbo v4, "Bharat Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x3e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1aa

    aput-object v0, v6, v1

    .line 809
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Chennai"

    const-string/jumbo v4, "Bharat Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x40

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ab

    aput-object v0, v6, v1

    .line 810
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Maharashtra"

    const-string/jumbo v4, "Bharat Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x42

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ac

    aput-object v0, v6, v1

    .line 811
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - West Bengal"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0x43

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ad

    aput-object v0, v6, v1

    .line 812
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTNL - Delhi"

    const-string/jumbo v4, "Mahanagar Telephone Nigam Ltd"

    const/16 v1, 0x194

    const/16 v2, 0x44

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ae

    aput-object v0, v6, v1

    .line 813
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTNL - Mumbai"

    const-string/jumbo v4, "Mahanagar Telephone Nigam Ltd"

    const/16 v1, 0x194

    const/16 v2, 0x45

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1af

    aput-object v0, v6, v1

    .line 814
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Rajasthan"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x46

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b0

    aput-object v0, v6, v1

    .line 815
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Karnataka"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x47

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b1

    aput-object v0, v6, v1

    .line 816
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Kerala"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x48

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b2

    aput-object v0, v6, v1

    .line 817
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Andhra Pradesh"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x49

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b3

    aput-object v0, v6, v1

    .line 818
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - West Bengal"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x4a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b4

    aput-object v0, v6, v1

    .line 819
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Bihar"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x4b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b5

    aput-object v0, v6, v1

    .line 820
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Orissa"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x4c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b6

    aput-object v0, v6, v1

    .line 821
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - North East"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x4d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b7

    aput-object v0, v6, v1

    .line 822
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Madhya Pradesh"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x194

    const/16 v2, 0x4e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b8

    aput-object v0, v6, v1

    .line 823
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Andaman Nicobar"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x4f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1b9

    aput-object v0, v6, v1

    .line 824
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Tamilnadu"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x50

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ba

    aput-object v0, v6, v1

    .line 825
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BSNL - Kolkata"

    const-string/jumbo v4, "Bharti Sanchar Nigam Limited"

    const/16 v1, 0x194

    const/16 v2, 0x51

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1bb

    aput-object v0, v6, v1

    .line 826
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Himachal Pradesh"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x194

    const/16 v2, 0x52

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1bc

    aput-object v0, v6, v1

    .line 827
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Kolkata"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x194

    const/16 v2, 0x53

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1bd

    aput-object v0, v6, v1

    .line 828
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Chennai"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0x54

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1be

    aput-object v0, v6, v1

    .line 829
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - West Bengal"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x194

    const/16 v2, 0x55

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1bf

    aput-object v0, v6, v1

    .line 830
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Karnataka"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0x56

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c0

    aput-object v0, v6, v1

    .line 831
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Rajasthan"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x194

    const/16 v2, 0x57

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c1

    aput-object v0, v6, v1

    .line 832
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Punjab"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x194

    const/16 v2, 0x58

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c2

    aput-object v0, v6, v1

    .line 833
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Uttar Pradesh (East)"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x194

    const/16 v2, 0x59

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c3

    aput-object v0, v6, v1

    .line 834
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Maharashtra"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x5a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c4

    aput-object v0, v6, v1

    .line 835
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Kolkata Metro Circle"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x5b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c5

    aput-object v0, v6, v1

    .line 836
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel Mumbai"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x5c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c6

    aput-object v0, v6, v1

    .line 837
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel Madhya Pradesh"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x5d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c7

    aput-object v0, v6, v1

    .line 838
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel Tamilnadu"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x5e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c8

    aput-object v0, v6, v1

    .line 839
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Kerala"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x5f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1c9

    aput-object v0, v6, v1

    .line 840
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Haryana"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x60

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ca

    aput-object v0, v6, v1

    .line 841
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Uttar Pradesh (West)"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x194

    const/16 v2, 0x61

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1cb

    aput-object v0, v6, v1

    .line 842
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Andhra Pradesh"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1cc

    aput-object v0, v6, v1

    .line 843
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Bihar"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1cd

    aput-object v0, v6, v1

    .line 844
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Chennai"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ce

    aput-object v0, v6, v1

    .line 845
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Delhi"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1cf

    aput-object v0, v6, v1

    .line 846
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Gujarat"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d0

    aput-object v0, v6, v1

    .line 847
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Haryana"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d1

    aput-object v0, v6, v1

    .line 848
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Himachal Pradesh"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d2

    aput-object v0, v6, v1

    .line 849
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Jammu & Kashmir"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d3

    aput-object v0, v6, v1

    .line 850
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Karnataka"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d4

    aput-object v0, v6, v1

    .line 851
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Kerala"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d5

    aput-object v0, v6, v1

    .line 852
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Kolkata"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d6

    aput-object v0, v6, v1

    .line 853
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Maharashtra"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0xd

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d7

    aput-object v0, v6, v1

    .line 854
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Madhya Pradesh"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0xe

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d8

    aput-object v0, v6, v1

    .line 855
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Mumbai"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1d9

    aput-object v0, v6, v1

    .line 856
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Orissa"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0x11

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1da

    aput-object v0, v6, v1

    .line 857
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Punjab"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0x12

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1db

    aput-object v0, v6, v1

    .line 858
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Rajasthan"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0x13

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1dc

    aput-object v0, v6, v1

    .line 859
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Tamilnadu"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1dd

    aput-object v0, v6, v1

    .line 860
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Uttar Pradesh (East)"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1de

    aput-object v0, v6, v1

    .line 861
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - Uttar Pradesh (West)"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0x16

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1df

    aput-object v0, v6, v1

    .line 862
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - West Bengal"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0x17

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e0

    aput-object v0, v6, v1

    .line 863
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Reliance - West Bengal"

    const-string/jumbo v4, "Reliance Communications"

    const/16 v1, 0x195

    const/16 v2, 0x17

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e1

    aput-object v0, v6, v1

    .line 864
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Andhra Pradesh"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x19

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e2

    aput-object v0, v6, v1

    .line 865
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Assam"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x1a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e3

    aput-object v0, v6, v1

    .line 866
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Bihar"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x1b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e4

    aput-object v0, v6, v1

    .line 867
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Chennai"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x1c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e5

    aput-object v0, v6, v1

    .line 868
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Delhi"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x1d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e6

    aput-object v0, v6, v1

    .line 869
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Gujarat"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e7

    aput-object v0, v6, v1

    .line 870
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Haryana"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x1f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e8

    aput-object v0, v6, v1

    .line 871
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Himachal Pradesh"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x20

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1e9

    aput-object v0, v6, v1

    .line 872
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Jammu & Kashmir"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x21

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ea

    aput-object v0, v6, v1

    .line 873
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Karnataka"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x22

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1eb

    aput-object v0, v6, v1

    .line 874
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Kerala"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x23

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ec

    aput-object v0, v6, v1

    .line 875
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Kolkata"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x24

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ed

    aput-object v0, v6, v1

    .line 876
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Maharashtra"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x25

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ee

    aput-object v0, v6, v1

    .line 877
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Madhya Pradesh"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x26

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ef

    aput-object v0, v6, v1

    .line 878
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Mumbai"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x27

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f0

    aput-object v0, v6, v1

    .line 879
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - North East"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x28

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f1

    aput-object v0, v6, v1

    .line 880
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Orissa"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x29

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f2

    aput-object v0, v6, v1

    .line 881
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Punjab"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x2a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f3

    aput-object v0, v6, v1

    .line 882
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Rajasthan"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x2b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f4

    aput-object v0, v6, v1

    .line 883
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Tamilnadu"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x2c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f5

    aput-object v0, v6, v1

    .line 884
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Uttar Pradesh (East)"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x2d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f6

    aput-object v0, v6, v1

    .line 885
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - Uttar Pradesh (West)"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x2e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f7

    aput-object v0, v6, v1

    .line 886
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tata - West Bengal"

    const-string/jumbo v4, "Tata Teleservices"

    const/16 v1, 0x195

    const/16 v2, 0x2f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f8

    aput-object v0, v6, v1

    .line 887
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - West Bengal"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x195

    const/16 v2, 0x33

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1f9

    aput-object v0, v6, v1

    .line 888
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Bihar"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x195

    const/16 v2, 0x34

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1fa

    aput-object v0, v6, v1

    .line 889
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Orissa"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x195

    const/16 v2, 0x35

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1fb

    aput-object v0, v6, v1

    .line 890
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Uttar Pradesh (East)"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x195

    const/16 v2, 0x36

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1fc

    aput-object v0, v6, v1

    .line 891
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Jammu & Kashmir"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x195

    const/16 v2, 0x37

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1fd

    aput-object v0, v6, v1

    .line 892
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Airtel - Assam"

    const-string/jumbo v4, "Bharti Airtel"

    const/16 v1, 0x195

    const/16 v2, 0x38

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1fe

    aput-object v0, v6, v1

    .line 893
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Uttar Pradesh (West)"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x195

    const/16 v2, 0x42

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x1ff

    aput-object v0, v6, v1

    .line 894
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - West Bengal"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x195

    const/16 v2, 0x43

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x200

    aput-object v0, v6, v1

    .line 895
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Bihar"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x46

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x201

    aput-object v0, v6, v1

    .line 896
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Jammu & Kashmir"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x195

    const/16 v2, 0x2ee

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x202

    aput-object v0, v6, v1

    .line 897
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Assam"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x195

    const/16 v2, 0x2ef

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x203

    aput-object v0, v6, v1

    .line 898
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Bihar"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x195

    const/16 v2, 0x2f0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x204

    aput-object v0, v6, v1

    .line 899
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Orissa"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x195

    const/16 v2, 0x2f1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x205

    aput-object v0, v6, v1

    .line 900
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Himachal Pradesh"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x195

    const/16 v2, 0x2f2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x206

    aput-object v0, v6, v1

    .line 901
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - North East"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x195

    const/16 v2, 0x2f3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x207

    aput-object v0, v6, v1

    .line 902
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone - Madhya Pradesh"

    const-string/jumbo v4, "Vodafone"

    const/16 v1, 0x195

    const/16 v2, 0x2f4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x208

    aput-object v0, v6, v1

    .line 903
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Mumbai"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x31f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x209

    aput-object v0, v6, v1

    .line 904
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Delhi"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x320

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x20a

    aput-object v0, v6, v1

    .line 905
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Andhra Pradesh"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x321

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x20b

    aput-object v0, v6, v1

    .line 906
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Gujarat"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x322

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x20c

    aput-object v0, v6, v1

    .line 907
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Karnataka"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x323

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x20d

    aput-object v0, v6, v1

    .line 908
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Maharashtra"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x324

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x20e

    aput-object v0, v6, v1

    .line 909
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Mumbai"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x325

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x20f

    aput-object v0, v6, v1

    .line 910
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Rajasthan"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x326

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x210

    aput-object v0, v6, v1

    .line 911
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Haryana"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x327

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x211

    aput-object v0, v6, v1

    .line 912
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Punjab"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x328

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x212

    aput-object v0, v6, v1

    .line 913
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Kerala"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x329

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x213

    aput-object v0, v6, v1

    .line 914
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Uttar Pradesh (East)"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x32a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x214

    aput-object v0, v6, v1

    .line 915
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Uttar Pradesh (West)"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x32b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x215

    aput-object v0, v6, v1

    .line 916
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aircel - Madhya Pradesh"

    const-string/jumbo v4, "Dishnet Wireless/Aircel"

    const/16 v1, 0x195

    const/16 v2, 0x32c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x216

    aput-object v0, v6, v1

    .line 917
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Haryana"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x32d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x217

    aput-object v0, v6, v1

    .line 918
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Himachal Pradesh"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x32e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x218

    aput-object v0, v6, v1

    .line 919
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Jammu & Kashmir"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x32f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x219

    aput-object v0, v6, v1

    .line 920
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Punjab"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x330

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x21a

    aput-object v0, v6, v1

    .line 921
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Rajasthan"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x331

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x21b

    aput-object v0, v6, v1

    .line 922
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Uttar Pradesh (West)"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x332

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x21c

    aput-object v0, v6, v1

    .line 923
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Andhra Pradesh"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x333

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x21d

    aput-object v0, v6, v1

    .line 924
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Karnataka"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x334

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x21e

    aput-object v0, v6, v1

    .line 925
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Kerala"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x335

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x21f

    aput-object v0, v6, v1

    .line 926
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Kolkata"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x336

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x220

    aput-object v0, v6, v1

    .line 927
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Delhi"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x34c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x221

    aput-object v0, v6, v1

    .line 928
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Assam"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x34d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x222

    aput-object v0, v6, v1

    .line 929
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Jammu & Kashmir"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x34e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x223

    aput-object v0, v6, v1

    .line 930
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Karnataka"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x34f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x224

    aput-object v0, v6, v1

    .line 931
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Kolkata"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x350

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x225

    aput-object v0, v6, v1

    .line 932
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - North East"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x351

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x226

    aput-object v0, v6, v1

    .line 933
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Orissa"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x352

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x227

    aput-object v0, v6, v1

    .line 934
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Punjab"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x353

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x228

    aput-object v0, v6, v1

    .line 935
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - Tamilnadu"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x354

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x229

    aput-object v0, v6, v1

    .line 936
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Idea - West Bengal"

    const-string/jumbo v4, "Idea Cellular Limited"

    const/16 v1, 0x195

    const/16 v2, 0x355

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x22a

    aput-object v0, v6, v1

    .line 937
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Loop - Andhra Pradesh"

    const-string/jumbo v4, "Loop Mobile"

    const/16 v1, 0x195

    const/16 v2, 0x356

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x22b

    aput-object v0, v6, v1

    .line 938
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Assam"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x36b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x22c

    aput-object v0, v6, v1

    .line 939
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Bihar"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x36c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x22d

    aput-object v0, v6, v1

    .line 940
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - North East"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x36d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x22e

    aput-object v0, v6, v1

    .line 941
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Orissa"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x36e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x22f

    aput-object v0, v6, v1

    .line 942
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - Uttar Pradesh (East)"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x36f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x230

    aput-object v0, v6, v1

    .line 943
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitech - West Bengal"

    const-string/jumbo v4, "Unitech Wireless"

    const/16 v1, 0x195

    const/16 v2, 0x370

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x231

    aput-object v0, v6, v1

    .line 944
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Andhra Pradesh"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x377

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x232

    aput-object v0, v6, v1

    .line 945
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Assam"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x378

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x233

    aput-object v0, v6, v1

    .line 946
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Bihar"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x379

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x234

    aput-object v0, v6, v1

    .line 947
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Delhi"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x37a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x235

    aput-object v0, v6, v1

    .line 948
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Gujarat"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x37b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x236

    aput-object v0, v6, v1

    .line 949
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Haryana"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x37c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x237

    aput-object v0, v6, v1

    .line 950
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Himachal Pradesh"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x37d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x238

    aput-object v0, v6, v1

    .line 951
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Jammu & Kashmir"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x37e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x239

    aput-object v0, v6, v1

    .line 952
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Karnataka"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x37f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x23a

    aput-object v0, v6, v1

    .line 953
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Kerala"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x380

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x23b

    aput-object v0, v6, v1

    .line 954
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Kolkata"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x381

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x23c

    aput-object v0, v6, v1

    .line 955
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Maharashtra"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x382

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x23d

    aput-object v0, v6, v1

    .line 956
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Madhya Pradesh"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x383

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x23e

    aput-object v0, v6, v1

    .line 957
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Mumbai"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x384

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x23f

    aput-object v0, v6, v1

    .line 958
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - North East"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x385

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x240

    aput-object v0, v6, v1

    .line 959
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shyam - Orissa"

    const-string/jumbo v4, "Sistema Shyam"

    const/16 v1, 0x195

    const/16 v2, 0x386

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x241

    aput-object v0, v6, v1

    .line 960
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Etisalat  - Andhra Pradesh"

    const-string/jumbo v4, "Etisalat DB"

    const/16 v1, 0x195

    const/16 v2, 0x390

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x242

    aput-object v0, v6, v1

    .line 964
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobilink"

    const-string/jumbo v4, "Mobilink-PMCL"

    const/16 v1, 0x19a

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x243

    aput-object v0, v6, v1

    .line 965
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Ufone"

    const-string/jumbo v4, "Pakistan Telecommunication Mobile Ltd"

    const/16 v1, 0x19a

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x244

    aput-object v0, v6, v1

    .line 966
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zong"

    const-string/jumbo v4, "China Mobile"

    const/16 v1, 0x19a

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x245

    aput-object v0, v6, v1

    .line 967
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telenor"

    const-string/jumbo v4, "Telenor Pakistan"

    const/16 v1, 0x19a

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x246

    aput-object v0, v6, v1

    .line 968
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Warid"

    const-string/jumbo v4, "WaridTel"

    const/16 v1, 0x19a

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x247

    aput-object v0, v6, v1

    .line 973
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AWCC"

    const-string/jumbo v4, "Afghan wireless Communication Company"

    const/16 v1, 0x19c

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x248

    aput-object v0, v6, v1

    .line 974
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Roshan"

    const-string/jumbo v4, "Telecom Development Company Afghanistan Ltd."

    const/16 v1, 0x19c

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x249

    aput-object v0, v6, v1

    .line 975
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Areeba"

    const-string/jumbo v4, "MTN Afghanistan"

    const/16 v1, 0x19c

    const/16 v2, 0x28

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x24a

    aput-object v0, v6, v1

    .line 976
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Etisalat"

    const-string/jumbo v4, "Etisalat Afghanistan"

    const/16 v1, 0x19c

    const/16 v2, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x24b

    aput-object v0, v6, v1

    .line 981
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobitel"

    const-string/jumbo v4, "Mobitel Lanka Ltd."

    const/16 v1, 0x19d

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x24c

    aput-object v0, v6, v1

    .line 982
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Dialog"

    const-string/jumbo v4, "Dialog Telekom PLC."

    const/16 v1, 0x19d

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x24d

    aput-object v0, v6, v1

    .line 983
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tigo"

    const-string/jumbo v4, "Celtel Lanka Ltd"

    const/16 v1, 0x19d

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x24e

    aput-object v0, v6, v1

    .line 984
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Hutch Sri Lanka"

    const-string/jumbo v4, "Hutch Sri Lanka"

    const/16 v1, 0x19d

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x24f

    aput-object v0, v6, v1

    .line 989
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MPT"

    const-string/jumbo v4, "Myanmar Post and Telecommunication"

    const/16 v1, 0x19e

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x250

    aput-object v0, v6, v1

    .line 994
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Alfa"

    const-string/jumbo v4, "Alfa"

    const/16 v1, 0x19f

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x251

    aput-object v0, v6, v1

    .line 995
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTC-Touch"

    const-string/jumbo v4, "MIC 2"

    const/16 v1, 0x19f

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x252

    aput-object v0, v6, v1

    .line 1000
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Jordan Mobile Teelphone Services"

    const/16 v1, 0x1a0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x253

    aput-object v0, v6, v1

    .line 1001
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Umniah"

    const-string/jumbo v4, "Umniah"

    const/16 v1, 0x1a0

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x254

    aput-object v0, v6, v1

    .line 1002
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    .line 1003
    const-string/jumbo v4, "Oetra Jordanian Mobile Telecommunications Company (MobileCom)"

    .line 1002
    const/16 v1, 0x1a0

    const/16 v2, 0x4d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x255

    aput-object v0, v6, v1

    .line 1008
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SyriaTel"

    const-string/jumbo v4, "SyriaTel"

    const/16 v1, 0x1a1

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x256

    aput-object v0, v6, v1

    .line 1009
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN Syria"

    const-string/jumbo v4, "MTN Syria (JSC)"

    const/16 v1, 0x1a1

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x257

    aput-object v0, v6, v1

    .line 1014
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain Iraq"

    const-string/jumbo v4, "Zain Iraq"

    const/16 v1, 0x1a2

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x258

    aput-object v0, v6, v1

    .line 1015
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain Iraq"

    const-string/jumbo v4, "Zain Iraq"

    const/16 v1, 0x1a2

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x259

    aput-object v0, v6, v1

    .line 1016
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Asia Cell"

    const-string/jumbo v4, "Asia Cell Telecommunications Company"

    const/16 v1, 0x1a2

    const/16 v2, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x25a

    aput-object v0, v6, v1

    .line 1017
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Korek"

    const-string/jumbo v4, "Korel Telecom Ltd"

    const/16 v1, 0x1a2

    const/16 v2, 0x28

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x25b

    aput-object v0, v6, v1

    .line 1022
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Mobile Telecommunications Co."

    const/16 v1, 0x1a3

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x25c

    aput-object v0, v6, v1

    .line 1023
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Wataniya"

    const-string/jumbo v4, "National Mobile Telecommunications"

    const/16 v1, 0x1a3

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x25d

    aput-object v0, v6, v1

    .line 1024
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Viva"

    const-string/jumbo v4, "Kuwait Telecommunication Company"

    const/16 v1, 0x1a3

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x25e

    aput-object v0, v6, v1

    .line 1029
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "STC"

    const-string/jumbo v4, "Saudi Telecom Company"

    const/16 v1, 0x1a4

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x25f

    aput-object v0, v6, v1

    .line 1030
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobily"

    const-string/jumbo v4, "Etihad Etisalat Company"

    const/16 v1, 0x1a4

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x260

    aput-object v0, v6, v1

    .line 1031
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain SA"

    const-string/jumbo v4, "MTC Saudi Arabia"

    const/16 v1, 0x1a4

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x261

    aput-object v0, v6, v1

    .line 1036
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SabaFon"

    const-string/jumbo v4, "SabaFon"

    const/16 v1, 0x1a5

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x262

    aput-object v0, v6, v1

    .line 1037
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "Spacetel"

    const/16 v1, 0x1a5

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x263

    aput-object v0, v6, v1

    .line 1038
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Yemen Mobile"

    const-string/jumbo v4, "Yemen Mobile"

    const/16 v1, 0x1a5

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x264

    aput-object v0, v6, v1

    .line 1039
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Y-Telecom"

    const-string/jumbo v4, "Y-Telecom"

    const/16 v1, 0x1a5

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x265

    aput-object v0, v6, v1

    .line 1044
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Oman Mobile"

    const-string/jumbo v4, "Oman Telecommunications Company"

    const/16 v1, 0x1a6

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x266

    aput-object v0, v6, v1

    .line 1045
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Nawras"

    const-string/jumbo v4, "Omani Qatari Telecommunications Company SAOC"

    const/16 v1, 0x1a6

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x267

    aput-object v0, v6, v1

    .line 1050
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Etisalat"

    const-string/jumbo v4, "Emirates Telecom Corp"

    const/16 v1, 0x1a8

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x268

    aput-object v0, v6, v1

    .line 1051
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "du"

    const-string/jumbo v4, "Emirates Integrated Telecommunications Company"

    const/16 v1, 0x1a8

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x269

    aput-object v0, v6, v1

    .line 1056
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Partner Communications Company Ltd"

    const/16 v1, 0x1a9

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x26a

    aput-object v0, v6, v1

    .line 1057
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cellcom"

    const-string/jumbo v4, "Cellcom"

    const/16 v1, 0x1a9

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x26b

    aput-object v0, v6, v1

    .line 1058
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Pelephone"

    const-string/jumbo v4, "Pelephone"

    const/16 v1, 0x1a9

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x26c

    aput-object v0, v6, v1

    .line 1063
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "JAWWAL"

    const-string/jumbo v4, "Palestine Cellular Communications, Ltd."

    const/16 v1, 0x1a9

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x26d

    aput-object v0, v6, v1

    .line 1068
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Qatarnet"

    const-string/jumbo v4, "Q-Tel"

    const/16 v1, 0x1ab

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x26e

    aput-object v0, v6, v1

    .line 1073
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Unitel"

    const-string/jumbo v4, "Unitel LLC"

    const/16 v1, 0x1ac

    const/16 v2, 0x58

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x26f

    aput-object v0, v6, v1

    .line 1074
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MobiCom"

    const-string/jumbo v4, "MobiCom Corporation"

    const/16 v1, 0x1ac

    const/16 v2, 0x63

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x270

    aput-object v0, v6, v1

    .line 1079
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Nepal Telecom"

    const-string/jumbo v4, "Nepal Telecom"

    const/16 v1, 0x1ad

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x271

    aput-object v0, v6, v1

    .line 1080
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mero Mobile"

    const-string/jumbo v4, "Spice Nepal Private Ltd"

    const/16 v1, 0x1ad

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x272

    aput-object v0, v6, v1

    .line 1085
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MCI"

    const-string/jumbo v4, "Mobile Communications Company of Iran"

    const/16 v1, 0x1b0

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x273

    aput-object v0, v6, v1

    .line 1086
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TKC"

    const-string/jumbo v4, "KFZO"

    const/16 v1, 0x1b0

    const/16 v2, 0xe

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x274

    aput-object v0, v6, v1

    .line 1087
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTCE"

    const-string/jumbo v4, "Mobile Telecommunications Company of Esfahan"

    const/16 v1, 0x1b0

    const/16 v2, 0x13

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x275

    aput-object v0, v6, v1

    .line 1088
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Taliya"

    const-string/jumbo v4, "Taliya"

    const/16 v1, 0x1b0

    const/16 v2, 0x20

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x276

    aput-object v0, v6, v1

    .line 1089
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Irancell"

    const-string/jumbo v4, "Irancell Telecommunications Services Company"

    const/16 v1, 0x1b0

    const/16 v2, 0x23

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x277

    aput-object v0, v6, v1

    .line 1094
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Beeline"

    const-string/jumbo v4, "Unitel LLC"

    const/16 v1, 0x1b2

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x278

    aput-object v0, v6, v1

    .line 1095
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Ucell"

    const-string/jumbo v4, "Coscom"

    const/16 v1, 0x1b2

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x279

    aput-object v0, v6, v1

    .line 1096
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTS"

    const-string/jumbo v4, "Mobile teleSystems (FE \'Uzdunrobita\' Ltd)"

    const/16 v1, 0x1b2

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x27a

    aput-object v0, v6, v1

    .line 1101
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Somoncom"

    const-string/jumbo v4, "JV Somoncom"

    const/16 v1, 0x1b4

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x27b

    aput-object v0, v6, v1

    .line 1102
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Indigo"

    const-string/jumbo v4, "Indigo Tajikistan"

    const/16 v1, 0x1b4

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x27c

    aput-object v0, v6, v1

    .line 1103
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MLT"

    const-string/jumbo v4, "TT Mobile, Closed joint-stock company"

    const/16 v1, 0x1b4

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x27d

    aput-object v0, v6, v1

    .line 1104
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Babilon-M"

    const-string/jumbo v4, "CJSC Babilon-Mobile"

    const/16 v1, 0x1b4

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x27e

    aput-object v0, v6, v1

    .line 1105
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Beeline TJ"

    const-string/jumbo v4, "Co Ltd. Tacom"

    const/16 v1, 0x1b4

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x27f

    aput-object v0, v6, v1

    .line 1110
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Bitel"

    const-string/jumbo v4, "Sky Mobile LLC"

    const/16 v1, 0x1b5

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x280

    aput-object v0, v6, v1

    .line 1111
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MegaCom"

    const-string/jumbo v4, "BiMoCom Ltd"

    const/16 v1, 0x1b5

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x281

    aput-object v0, v6, v1

    .line 1112
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "O!"

    const-string/jumbo v4, "NurTelecom LLC"

    const/16 v1, 0x1b5

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x282

    aput-object v0, v6, v1

    .line 1117
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTS"

    const-string/jumbo v4, "Barash Communication Technologies"

    const/16 v1, 0x1b6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x283

    aput-object v0, v6, v1

    .line 1118
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TM-Cell"

    const-string/jumbo v4, "TM-Cell"

    const/16 v1, 0x1b6

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x284

    aput-object v0, v6, v1

    .line 1123
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "eMobile"

    const-string/jumbo v4, "eMobile, Ltd."

    const/16 v1, 0x1b8

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x285

    aput-object v0, v6, v1

    .line 1124
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DoCoMo"

    const-string/jumbo v4, "NTT DoCoMo"

    const/16 v1, 0x1b8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x286

    aput-object v0, v6, v1

    .line 1125
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DoCoMo"

    const-string/jumbo v4, "NTT DoCoMo Kansai"

    const/16 v1, 0x1b8

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x287

    aput-object v0, v6, v1

    .line 1126
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DoCoMo"

    const-string/jumbo v4, "NTT DoCoMo Hokuriku"

    const/16 v1, 0x1b8

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x288

    aput-object v0, v6, v1

    .line 1127
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SoftBank"

    const-string/jumbo v4, "SoftBank Mobile Corp"

    const/16 v1, 0x1b8

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x289

    aput-object v0, v6, v1

    .line 1128
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SoftBank"

    const-string/jumbo v4, "SoftBank Mobile Corp"

    const/16 v1, 0x1b8

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x28a

    aput-object v0, v6, v1

    .line 1129
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x28b

    aput-object v0, v6, v1

    .line 1130
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x28c

    aput-object v0, v6, v1

    .line 1131
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DoCoMo"

    const-string/jumbo v4, "NTT DoCoMo Kansai"

    const/16 v1, 0x1b8

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x28d

    aput-object v0, v6, v1

    .line 1132
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SoftBank"

    const-string/jumbo v4, "SoftBank Mobile Corp"

    const/16 v1, 0x1b8

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x28e

    aput-object v0, v6, v1

    .line 1133
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x28f

    aput-object v0, v6, v1

    .line 1134
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x35

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x290

    aput-object v0, v6, v1

    .line 1135
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x36

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x291

    aput-object v0, v6, v1

    .line 1136
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x46

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x292

    aput-object v0, v6, v1

    .line 1137
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x47

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x293

    aput-object v0, v6, v1

    .line 1138
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x48

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x294

    aput-object v0, v6, v1

    .line 1139
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x49

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x295

    aput-object v0, v6, v1

    .line 1140
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x4a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x296

    aput-object v0, v6, v1

    .line 1141
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x4b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x297

    aput-object v0, v6, v1

    .line 1142
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x4c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x298

    aput-object v0, v6, v1

    .line 1143
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KDDI"

    const-string/jumbo v4, "KDDI"

    const/16 v1, 0x1b8

    const/16 v2, 0x4e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x299

    aput-object v0, v6, v1

    .line 1148
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SK"

    const-string/jumbo v4, "SK Telecom"

    const/16 v1, 0x1c2

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x29a

    aput-object v0, v6, v1

    .line 1149
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SK"

    const-string/jumbo v4, "SK Telecom"

    const/16 v1, 0x1c2

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x29b

    aput-object v0, v6, v1

    .line 1150
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SK"

    const-string/jumbo v4, "SK Telecom"

    const/16 v1, 0x1c2

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x29c

    aput-object v0, v6, v1

    .line 1151
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "LG Telecom"

    const-string/jumbo v4, "LG Telecom"

    const/16 v1, 0x1c2

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x29d

    aput-object v0, v6, v1

    .line 1152
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KTF SHOW"

    const-string/jumbo v4, "KTF"

    const/16 v1, 0x1c2

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x29e

    aput-object v0, v6, v1

    .line 1153
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SK"

    const-string/jumbo v4, "SK Telecom"

    const/16 v1, 0x1c2

    const/16 v2, 0x16

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x29f

    aput-object v0, v6, v1

    .line 1158
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MobiFone"

    const-string/jumbo v4, "Vietnam Mobile Telecom Services Company"

    const/16 v1, 0x1c4

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a0

    aput-object v0, v6, v1

    .line 1159
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vinaphone"

    const-string/jumbo v4, "Vietnam Telecoms Services Company"

    const/16 v1, 0x1c4

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a1

    aput-object v0, v6, v1

    .line 1160
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "S-Telecom"

    const-string/jumbo v4, "S-Telecom"

    const/16 v1, 0x1c4

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a2

    aput-object v0, v6, v1

    .line 1161
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Viettel Mobile"

    const-string/jumbo v4, "iViettel Corporation"

    const/16 v1, 0x1c4

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a3

    aput-object v0, v6, v1

    .line 1162
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Hanoi"

    const-string/jumbo v4, "Hanoi"

    const/16 v1, 0x1c4

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a4

    aput-object v0, v6, v1

    .line 1167
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CSL"

    const-string/jumbo v4, "Hong Kong CSL Limited"

    const/16 v1, 0x1c6

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a5

    aput-object v0, v6, v1

    .line 1168
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CITIC Telecom 1616"

    const-string/jumbo v4, "CITIC Telecom 1616"

    const/16 v1, 0x1c6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a6

    aput-object v0, v6, v1

    .line 1169
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CSL"

    const-string/jumbo v4, "Hong Kong CSL Limited"

    const/16 v1, 0x1c6

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a7

    aput-object v0, v6, v1

    .line 1170
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3(3G)"

    const-string/jumbo v4, "3(3G)"

    const/16 v1, 0x1c6

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a8

    aput-object v0, v6, v1

    .line 1171
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3(2G)"

    const-string/jumbo v4, "3(2G)"

    const/16 v1, 0x1c6

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2a9

    aput-object v0, v6, v1

    .line 1172
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3 HK"

    const-string/jumbo v4, "3 HK"

    const/16 v1, 0x1c6

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2aa

    aput-object v0, v6, v1

    .line 1173
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SmarTone"

    const-string/jumbo v4, "SmarTone Mobile Comms"

    const/16 v1, 0x1c6

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ab

    aput-object v0, v6, v1

    .line 1174
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Unicom"

    const-string/jumbo v4, "China Unicom"

    const/16 v1, 0x1c6

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ac

    aput-object v0, v6, v1

    .line 1175
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Trident"

    const-string/jumbo v4, "Trident"

    const/16 v1, 0x1c6

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ad

    aput-object v0, v6, v1

    .line 1176
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Motion Telecom"

    const-string/jumbo v4, "China Motion Telecom"

    const/16 v1, 0x1c6

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ae

    aput-object v0, v6, v1

    .line 1177
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "New World"

    const-string/jumbo v4, "Hong Kong CSL Limited"

    const/16 v1, 0x1c6

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2af

    aput-object v0, v6, v1

    .line 1178
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Chia-HongKong Telecom"

    const-string/jumbo v4, "Chia-HongKong Telecom"

    const/16 v1, 0x1c6

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b0

    aput-object v0, v6, v1

    .line 1179
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Mobile HK"

    const-string/jumbo v4, "China Mobile Hong Kong Company Limited"

    const/16 v1, 0x1c6

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b1

    aput-object v0, v6, v1

    .line 1180
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Mobile HK"

    const-string/jumbo v4, "China Mobile Hong Kong Company Limited"

    const/16 v1, 0x1c6

    const/16 v2, 0xd

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b2

    aput-object v0, v6, v1

    .line 1181
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Hutchison Telecom"

    const-string/jumbo v4, "Hutchison Telecom"

    const/16 v1, 0x1c6

    const/16 v2, 0xe

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b3

    aput-object v0, v6, v1

    .line 1182
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SmarTone-Vodafone"

    const-string/jumbo v4, "SmarTone Mobile Comms"

    const/16 v1, 0x1c6

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b4

    aput-object v0, v6, v1

    .line 1183
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "PCCW"

    const-string/jumbo v4, "PCCW Mobile (PCCW Ltd)"

    const/16 v1, 0x1c6

    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b5

    aput-object v0, v6, v1

    .line 1184
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SmarTone-Vodafone"

    const-string/jumbo v4, "SmarTone Mobile Comms"

    const/16 v1, 0x1c6

    const/16 v2, 0x11

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b6

    aput-object v0, v6, v1

    .line 1185
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CSL"

    const-string/jumbo v4, "CSL"

    const/16 v1, 0x1c6

    const/16 v2, 0x12

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b7

    aput-object v0, v6, v1

    .line 1186
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "PCCW"

    const-string/jumbo v4, "PCCW Mobile (PCCW Ltd)"

    const/16 v1, 0x1c6

    const/16 v2, 0x13

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b8

    aput-object v0, v6, v1

    .line 1187
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "PCCW"

    const-string/jumbo v4, "PCCW Mobile (PCCW Ltd)"

    const/16 v1, 0x1c6

    const/16 v2, 0x1d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2b9

    aput-object v0, v6, v1

    .line 1192
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SmarTone MO"

    const-string/jumbo v4, "SmarTone Macau"

    const/16 v1, 0x1c7

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ba

    aput-object v0, v6, v1

    .line 1193
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CTM"

    const-string/jumbo v4, "C.T.M. Telemovel+"

    const/16 v1, 0x1c7

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2bb

    aput-object v0, v6, v1

    .line 1194
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CT Macao"

    const-string/jumbo v4, "CT Macao"

    const/16 v1, 0x1c7

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2bc

    aput-object v0, v6, v1

    .line 1195
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "Hutchison Telecom"

    const/16 v1, 0x1c7

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2bd

    aput-object v0, v6, v1

    .line 1196
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CTM"

    const-string/jumbo v4, "C.T.M. Telemovel+"

    const/16 v1, 0x1c7

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2be

    aput-object v0, v6, v1

    .line 1197
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "Hutchison Telecom"

    const/16 v1, 0x1c7

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2bf

    aput-object v0, v6, v1

    .line 1202
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobitel"

    const-string/jumbo v4, "CamGSM"

    const/16 v1, 0x1c8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c0

    aput-object v0, v6, v1

    .line 1203
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "hello"

    const-string/jumbo v4, "Telekom Malaysia International (Cambodia) Co. Ltd"

    const/16 v1, 0x1c8

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c1

    aput-object v0, v6, v1

    .line 1204
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "qb"

    const-string/jumbo v4, "Cambodia Advance Communications Co. Ltd"

    const/16 v1, 0x1c8

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c2

    aput-object v0, v6, v1

    .line 1205
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Star-Cell"

    const-string/jumbo v4, "APPLIFONE CO. LTD."

    const/16 v1, 0x1c8

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c3

    aput-object v0, v6, v1

    .line 1206
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Shinawatra"

    const-string/jumbo v4, "Shinawatra"

    const/16 v1, 0x1c8

    const/16 v2, 0x12

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c4

    aput-object v0, v6, v1

    .line 1211
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "LaoTel"

    const-string/jumbo v4, "Lao Shinawatra Telecom"

    const/16 v1, 0x1c9

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c5

    aput-object v0, v6, v1

    .line 1212
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ETL"

    const-string/jumbo v4, "Enterprise of Telecommunications Lao"

    const/16 v1, 0x1c9

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c6

    aput-object v0, v6, v1

    .line 1213
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "LAT"

    const-string/jumbo v4, "Lao Asia Telecommunication State Enterprise (LAT)"

    const/16 v1, 0x1c9

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c7

    aput-object v0, v6, v1

    .line 1214
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tigo"

    const-string/jumbo v4, "Millicom Lao Co Ltd"

    const/16 v1, 0x1c9

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c8

    aput-object v0, v6, v1

    .line 1219
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Mobile"

    const-string/jumbo v4, "China Mobile"

    const/16 v1, 0x1cc

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2c9

    aput-object v0, v6, v1

    .line 1220
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Mobile"

    const-string/jumbo v4, "China Mobile"

    const/16 v1, 0x1cc

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ca

    aput-object v0, v6, v1

    .line 1221
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Mobile"

    const-string/jumbo v4, "China Mobile"

    const/16 v1, 0x1cc

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2cb

    aput-object v0, v6, v1

    .line 1222
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Mobile"

    const-string/jumbo v4, "China Mobile"

    const/16 v1, 0x1cc

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2cc

    aput-object v0, v6, v1

    .line 1223
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Mobile"

    const-string/jumbo v4, "China Mobile"

    const/16 v1, 0x1cc

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2cd

    aput-object v0, v6, v1

    .line 1224
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Unicom"

    const-string/jumbo v4, "China Unicom"

    const/16 v1, 0x1cc

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ce

    aput-object v0, v6, v1

    .line 1225
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Unicom"

    const-string/jumbo v4, "China Unicom"

    const/16 v1, 0x1cc

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2cf

    aput-object v0, v6, v1

    .line 1226
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Telecom"

    const-string/jumbo v4, "China Telecom"

    const/16 v1, 0x1cc

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d0

    aput-object v0, v6, v1

    .line 1227
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Telecom"

    const-string/jumbo v4, "China Telecom"

    const/16 v1, 0x1cc

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d1

    aput-object v0, v6, v1

    .line 1228
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Telecom"

    const-string/jumbo v4, "China Telecom"

    const/16 v1, 0x1cc

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d2

    aput-object v0, v6, v1

    .line 1229
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "China Telecom"

    const-string/jumbo v4, "China Telecom"

    const/16 v1, 0x1cc

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d3

    aput-object v0, v6, v1

    .line 1233
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Far EasTone"

    const-string/jumbo v4, "Far EasTone Telecommunications Co Ltd"

    const/16 v1, 0x1d2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d4

    aput-object v0, v6, v1

    .line 1234
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Asia Pacific Telecom"

    const-string/jumbo v4, "Asia Pacific Telecom"

    const/16 v1, 0x1d2

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d5

    aput-object v0, v6, v1

    .line 1235
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tuntex"

    const-string/jumbo v4, "Tuntex Telecom"

    const/16 v1, 0x1d2

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d6

    aput-object v0, v6, v1

    .line 1236
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KG Telecom"

    const-string/jumbo v4, "KG Telecom"

    const/16 v1, 0x1d2

    const/16 v2, 0x58

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d7

    aput-object v0, v6, v1

    .line 1237
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "VIBO"

    const-string/jumbo v4, "VIBO Telecom"

    const/16 v1, 0x1d2

    const/16 v2, 0x59

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d8

    aput-object v0, v6, v1

    .line 1238
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Chunghwa"

    const-string/jumbo v4, "Chunghwa"

    const/16 v1, 0x1d2

    const/16 v2, 0x5c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2d9

    aput-object v0, v6, v1

    .line 1239
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MobiTai"

    const-string/jumbo v4, "iMobitai Communications"

    const/16 v1, 0x1d2

    const/16 v2, 0x5d

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2da

    aput-object v0, v6, v1

    .line 1240
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TW Mobile"

    const-string/jumbo v4, "Taiwan Mobile Co. Ltd"

    const/16 v1, 0x1d2

    const/16 v2, 0x61

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2db

    aput-object v0, v6, v1

    .line 1241
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TransAsia"

    const-string/jumbo v4, "TransAsia Telecoms"

    const/16 v1, 0x1d2

    const/16 v2, 0x63

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2dc

    aput-object v0, v6, v1

    .line 1246
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SUN NET"

    const-string/jumbo v4, "Korea Posts and Telecommunications Corporation"

    const/16 v1, 0x1d3

    const/16 v2, 0xc1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2dd

    aput-object v0, v6, v1

    .line 1251
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Grameenphone"

    const-string/jumbo v4, "GrameenPhone Ltd"

    const/16 v1, 0x1d6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2de

    aput-object v0, v6, v1

    .line 1252
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aktel"

    const-string/jumbo v4, "Aktel"

    const/16 v1, 0x1d6

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2df

    aput-object v0, v6, v1

    .line 1253
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Banglalink"

    const-string/jumbo v4, "Orascom telecom Bangladesh Limited"

    const/16 v1, 0x1d6

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e0

    aput-object v0, v6, v1

    .line 1254
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TeleTalk"

    const-string/jumbo v4, "TeleTalk"

    const/16 v1, 0x1d6

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e1

    aput-object v0, v6, v1

    .line 1255
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Citycell"

    const-string/jumbo v4, "Citycell"

    const/16 v1, 0x1d6

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e2

    aput-object v0, v6, v1

    .line 1256
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Warid"

    const-string/jumbo v4, "Warid Telecom"

    const/16 v1, 0x1d6

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e3

    aput-object v0, v6, v1

    .line 1261
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Dhiraagu"

    const-string/jumbo v4, "Dhivehi Raajjeyge Gulhun"

    const/16 v1, 0x1d8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e4

    aput-object v0, v6, v1

    .line 1262
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Wataniya"

    const-string/jumbo v4, "Wataniya Telecom Maldives"

    const/16 v1, 0x1d8

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e5

    aput-object v0, v6, v1

    .line 1267
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Maxis"

    const-string/jumbo v4, "Maxis Communications Berhad"

    const/16 v1, 0x1f6

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e6

    aput-object v0, v6, v1

    .line 1268
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Celcom"

    const-string/jumbo v4, "Celcom Malaysia Sdn Bhd"

    const/16 v1, 0x1f6

    const/16 v2, 0xd

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e7

    aput-object v0, v6, v1

    .line 1269
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DiGi"

    const-string/jumbo v4, "DiGi Telecommunications"

    const/16 v1, 0x1f6

    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e8

    aput-object v0, v6, v1

    .line 1270
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "U Mobile"

    const-string/jumbo v4, "U Mobile Sdn Bhd"

    const/16 v1, 0x1f6

    const/16 v2, 0x12

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2e9

    aput-object v0, v6, v1

    .line 1271
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Celcom"

    const-string/jumbo v4, "Celcom Malaysia Sdn Bhd"

    const/16 v1, 0x1f6

    const/16 v2, 0x13

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ea

    aput-object v0, v6, v1

    .line 1276
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telstra"

    const-string/jumbo v4, "Telstra Corp. Ltd."

    const/16 v1, 0x1f9

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2eb

    aput-object v0, v6, v1

    .line 1277
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "YES OPTUS"

    const-string/jumbo v4, "Singtel Optus Ltd"

    const/16 v1, 0x1f9

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ec

    aput-object v0, v6, v1

    .line 1278
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Australia"

    const/16 v1, 0x1f9

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ed

    aput-object v0, v6, v1

    .line 1279
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "Hutchison 3G"

    const/16 v1, 0x1f9

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ee

    aput-object v0, v6, v1

    .line 1280
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telstra"

    const-string/jumbo v4, "Telstra"

    const/16 v1, 0x1f9

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ef

    aput-object v0, v6, v1

    .line 1281
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "YES OPTUS"

    const-string/jumbo v4, "Singtel Optus Ltd"

    const/16 v1, 0x1f9

    const/16 v2, 0x5a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f0

    aput-object v0, v6, v1

    .line 1286
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "PSN"

    const-string/jumbo v4, "PT Pasifik Satelit Nusantara (ACeS)"

    const/16 v1, 0x1fe

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f1

    aput-object v0, v6, v1

    .line 1287
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "INDOSAT"

    const-string/jumbo v4, "PT Indonesian Satellite Corporation Tbk (INDOSAT)"

    const/16 v1, 0x1fe

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f2

    aput-object v0, v6, v1

    .line 1288
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AXIS"

    const-string/jumbo v4, "PT Natrindo Telepon Seluler"

    const/16 v1, 0x1fe

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f3

    aput-object v0, v6, v1

    .line 1289
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Smartfren"

    const-string/jumbo v4, "Smartfren"

    const/16 v1, 0x1fe

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f4

    aput-object v0, v6, v1

    .line 1290
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telkomsel"

    const-string/jumbo v4, "PT Telkomunikasi Selular"

    const/16 v1, 0x1fe

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f5

    aput-object v0, v6, v1

    .line 1291
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "XL"

    const-string/jumbo v4, "PT Excelcomindo Pratama"

    const/16 v1, 0x1fe

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f6

    aput-object v0, v6, v1

    .line 1292
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Smartfren"

    const-string/jumbo v4, "Smartfren"

    const/16 v1, 0x1fe

    const/16 v2, 0x1c

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f7

    aput-object v0, v6, v1

    .line 1293
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "PT Hutchison CP Telecommunications"

    const/16 v1, 0x1fe

    const/16 v2, 0x59

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f8

    aput-object v0, v6, v1

    .line 1298
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Timor Telecom"

    const-string/jumbo v4, "Timor Telecom"

    const/16 v1, 0x202

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2f9

    aput-object v0, v6, v1

    .line 1303
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Islacom"

    const-string/jumbo v4, "Innove Communicatiobs Inc"

    const/16 v1, 0x203

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2fa

    aput-object v0, v6, v1

    .line 1304
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Globe"

    const-string/jumbo v4, "Globe Telecom"

    const/16 v1, 0x203

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2fb

    aput-object v0, v6, v1

    .line 1305
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Smart Gold"

    const-string/jumbo v4, "Smart Communications Inc"

    const/16 v1, 0x203

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2fc

    aput-object v0, v6, v1

    .line 1306
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digitel"

    const-string/jumbo v4, "Digital Telecommunications Philppines"

    const/16 v1, 0x203

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2fd

    aput-object v0, v6, v1

    .line 1307
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Red Mobile"

    const-string/jumbo v4, "Connectivity Unlimited resource Enterprise"

    const/16 v1, 0x203

    const/16 v2, 0x12

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2fe

    aput-object v0, v6, v1

    .line 1312
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CAT"

    const-string/jumbo v4, "CAT"

    const/16 v1, 0x208

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x2ff

    aput-object v0, v6, v1

    .line 1313
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Advanced Info Service"

    const-string/jumbo v4, "Advanced Info Service"

    const/16 v1, 0x208

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x300

    aput-object v0, v6, v1

    .line 1314
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ACT Mobile"

    const-string/jumbo v4, "ACT Mobile"

    const/16 v1, 0x208

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x301

    aput-object v0, v6, v1

    .line 1315
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DTAC"

    const-string/jumbo v4, "Total Access Communication"

    const/16 v1, 0x208

    const/16 v2, 0x12

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x302

    aput-object v0, v6, v1

    .line 1316
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Advanced Info Service"

    const-string/jumbo v4, "Advanced Info Service"

    const/16 v1, 0x208

    const/16 v2, 0x17

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x303

    aput-object v0, v6, v1

    .line 1317
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "True Move"

    const-string/jumbo v4, "True Move"

    const/16 v1, 0x208

    const/16 v2, 0x63

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x304

    aput-object v0, v6, v1

    .line 1322
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SingTel"

    const-string/jumbo v4, "Singapore Telecom"

    const/16 v1, 0x20d

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x305

    aput-object v0, v6, v1

    .line 1323
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SingTel-G18"

    const-string/jumbo v4, "Singapore Telecom"

    const/16 v1, 0x20d

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x306

    aput-object v0, v6, v1

    .line 1324
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "M1"

    const-string/jumbo v4, "MobileOne Asia"

    const/16 v1, 0x20d

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x307

    aput-object v0, v6, v1

    .line 1325
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "StarHub"

    const-string/jumbo v4, "StarHub Mobile"

    const/16 v1, 0x20d

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x308

    aput-object v0, v6, v1

    .line 1330
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "B-Mobile"

    const-string/jumbo v4, "B-Mobile Communications Sdn Bhd"

    const/16 v1, 0x210

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x309

    aput-object v0, v6, v1

    .line 1331
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DTSCom"

    const-string/jumbo v4, "DataStream Technology"

    const/16 v1, 0x210

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x30a

    aput-object v0, v6, v1

    .line 1336
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone New Zealand"

    const/16 v1, 0x212

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x30b

    aput-object v0, v6, v1

    .line 1337
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TML"

    const-string/jumbo v4, "TML"

    const/16 v1, 0x212

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x30c

    aput-object v0, v6, v1

    .line 1338
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Woosh"

    const-string/jumbo v4, "Woosh wireless New Zealand"

    const/16 v1, 0x212

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x30d

    aput-object v0, v6, v1

    .line 1339
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telecom"

    const-string/jumbo v4, "Telecom New Zealand"

    const/16 v1, 0x212

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x30e

    aput-object v0, v6, v1

    .line 1340
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "NZ Comms"

    const-string/jumbo v4, "NZ Communications New Zealand"

    const/16 v1, 0x212

    const/16 v2, 0x18

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x30f

    aput-object v0, v6, v1

    .line 1345
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "B-Mobile"

    const-string/jumbo v4, "Pacific Mobile Communications"

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x310

    aput-object v0, v6, v1

    .line 1350
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BREEZE"

    const-string/jumbo v4, "Solomon Telekom Co Ltd"

    const/16 v1, 0x21c

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x311

    aput-object v0, v6, v1

    .line 1355
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SMILE"

    const-string/jumbo v4, "telecom Vanuatu Ltd"

    const/16 v1, 0x21d

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x312

    aput-object v0, v6, v1

    .line 1360
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Fiji"

    const/16 v1, 0x21e

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x313

    aput-object v0, v6, v1

    .line 1365
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Kiribati Frigate"

    const-string/jumbo v4, "Telecom services Kiribati Ltd"

    const/16 v1, 0x221

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x314

    aput-object v0, v6, v1

    .line 1370
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobilis"

    const-string/jumbo v4, "OPT New Caledonia"

    const/16 v1, 0x222

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x315

    aput-object v0, v6, v1

    .line 1375
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "VINI"

    const-string/jumbo v4, "Tikiphone SA"

    const/16 v1, 0x223

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x316

    aput-object v0, v6, v1

    .line 1380
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telecom Cook"

    const-string/jumbo v4, "Telecom Cook"

    const/16 v1, 0x224

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x317

    aput-object v0, v6, v1

    .line 1385
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Digicel Pacific Ltd."

    const/16 v1, 0x225

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x318

    aput-object v0, v6, v1

    .line 1386
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SamoaTel"

    const-string/jumbo v4, "SamoaTel Ltd"

    const/16 v1, 0x225

    const/16 v2, 0x1b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x319

    aput-object v0, v6, v1

    .line 1391
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "FSM Telecom"

    const-string/jumbo v4, "FSM Telecom"

    const/16 v1, 0x226

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x31a

    aput-object v0, v6, v1

    .line 1396
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "PNCC"

    const-string/jumbo v4, "Palau National Communications Corp."

    const/16 v1, 0x228

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x31b

    aput-object v0, v6, v1

    .line 1397
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Palau Mobile"

    const-string/jumbo v4, "Palau Mobile Corporation"

    const/16 v1, 0x228

    const/16 v2, 0x50

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x31c

    aput-object v0, v6, v1

    .line 1402
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobinil"

    const-string/jumbo v4, "ECMS-Mobinil"

    const/16 v1, 0x25a

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x31d

    aput-object v0, v6, v1

    .line 1403
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone"

    const-string/jumbo v4, "Vodafone Egypt"

    const/16 v1, 0x25a

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x31e

    aput-object v0, v6, v1

    .line 1404
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "etisalat"

    const-string/jumbo v4, "Etisalat Egypt"

    const/16 v1, 0x25a

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x31f

    aput-object v0, v6, v1

    .line 1409
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobilis"

    const-string/jumbo v4, "ATM Mobilis"

    const/16 v1, 0x25b

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x320

    aput-object v0, v6, v1

    .line 1410
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Djezzy"

    const-string/jumbo v4, "Orascom Telecom Algerie Spa"

    const/16 v1, 0x25b

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x321

    aput-object v0, v6, v1

    .line 1411
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Nedjma"

    const-string/jumbo v4, "Wataniya Telecom Algerie"

    const/16 v1, 0x25b

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x322

    aput-object v0, v6, v1

    .line 1416
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Meditel"

    const-string/jumbo v4, "Medi Telecom"

    const/16 v1, 0x25c

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x323

    aput-object v0, v6, v1

    .line 1417
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "IAM"

    const-string/jumbo v4, "Ittissalat Al Maghrib (Maroc Telecom)"

    const/16 v1, 0x25c

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x324

    aput-object v0, v6, v1

    .line 1422
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tunicell"

    const-string/jumbo v4, "Tunisie Telecom"

    const/16 v1, 0x25d

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x325

    aput-object v0, v6, v1

    .line 1423
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tunisiana"

    const-string/jumbo v4, "Orascom Telecom Tunisie"

    const/16 v1, 0x25d

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x326

    aput-object v0, v6, v1

    .line 1428
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Libyana"

    const-string/jumbo v4, "Libyana"

    const/16 v1, 0x25e

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x327

    aput-object v0, v6, v1

    .line 1429
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Madar"

    const-string/jumbo v4, "Al Madar"

    const/16 v1, 0x25e

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x328

    aput-object v0, v6, v1

    .line 1434
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mattel"

    const-string/jumbo v4, "Mattel"

    const/16 v1, 0x261

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x329

    aput-object v0, v6, v1

    .line 1435
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mauritel"

    const-string/jumbo v4, "Mauritel Mobiles"

    const/16 v1, 0x261

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x32a

    aput-object v0, v6, v1

    .line 1440
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Malitel"

    const-string/jumbo v4, "Malitel SA"

    const/16 v1, 0x262

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x32b

    aput-object v0, v6, v1

    .line 1441
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Mali SA"

    const/16 v1, 0x262

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x32c

    aput-object v0, v6, v1

    .line 1446
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Lagui"

    const-string/jumbo v4, "Sotelgui Lagui"

    const/16 v1, 0x263

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x32d

    aput-object v0, v6, v1

    .line 1447
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telecel Guinee"

    const-string/jumbo v4, "INTERCEL Guinee"

    const/16 v1, 0x263

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x32e

    aput-object v0, v6, v1

    .line 1448
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "Areeba Guinea"

    const/16 v1, 0x263

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x32f

    aput-object v0, v6, v1

    .line 1453
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Moov"

    const-string/jumbo v4, "Moov"

    const/16 v1, 0x264

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x330

    aput-object v0, v6, v1

    .line 1454
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange"

    const/16 v1, 0x264

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x331

    aput-object v0, v6, v1

    .line 1455
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "KoZ"

    const-string/jumbo v4, "Comium Ivory Coast Inc"

    const/16 v1, 0x264

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x332

    aput-object v0, v6, v1

    .line 1456
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "MTN"

    const/16 v1, 0x264

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x333

    aput-object v0, v6, v1

    .line 1457
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ORICEL"

    const-string/jumbo v4, "ORICEL"

    const/16 v1, 0x264

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x334

    aput-object v0, v6, v1

    .line 1462
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Onatel"

    const-string/jumbo v4, "Onatel"

    const/16 v1, 0x265

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x335

    aput-object v0, v6, v1

    .line 1463
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Celtel Burkina Faso"

    const/16 v1, 0x265

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x336

    aput-object v0, v6, v1

    .line 1464
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telecel Faso"

    const-string/jumbo v4, "Telecel Faso SA"

    const/16 v1, 0x265

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x337

    aput-object v0, v6, v1

    .line 1469
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SahelCom"

    const-string/jumbo v4, "SahelCom"

    const/16 v1, 0x266

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x338

    aput-object v0, v6, v1

    .line 1470
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Celtel Niger"

    const/16 v1, 0x266

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x339

    aput-object v0, v6, v1

    .line 1471
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telecel"

    const-string/jumbo v4, "Telecel Niger SA"

    const/16 v1, 0x266

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x33a

    aput-object v0, v6, v1

    .line 1472
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Niger"

    const/16 v1, 0x266

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x33b

    aput-object v0, v6, v1

    .line 1477
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Togo Cell"

    const-string/jumbo v4, "Togo Telecom"

    const/16 v1, 0x267

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x33c

    aput-object v0, v6, v1

    .line 1478
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telecel"

    const-string/jumbo v4, "Telecel Togo"

    const/16 v1, 0x267

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x33d

    aput-object v0, v6, v1

    .line 1483
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BBCOM"

    const-string/jumbo v4, "Bell Benin Communications"

    const/16 v1, 0x268

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x33e

    aput-object v0, v6, v1

    .line 1484
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telecel"

    const-string/jumbo v4, "Telecel Benin Ltd"

    const/16 v1, 0x268

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x33f

    aput-object v0, v6, v1

    .line 1485
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Areeba"

    const-string/jumbo v4, "Spacetel Benin"

    const/16 v1, 0x268

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x340

    aput-object v0, v6, v1

    .line 1490
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Cellplus Mobile Communications Ltd"

    const/16 v1, 0x269

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x341

    aput-object v0, v6, v1

    .line 1491
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Emtel"

    const-string/jumbo v4, "Emtel Ltd"

    const/16 v1, 0x269

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x342

    aput-object v0, v6, v1

    .line 1496
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "LoneStar Cell"

    const-string/jumbo v4, "Lonestar Communications Corporation"

    const/16 v1, 0x26a

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x343

    aput-object v0, v6, v1

    .line 1501
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "ScanCom Ltd"

    const/16 v1, 0x26c

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x344

    aput-object v0, v6, v1

    .line 1502
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Ghana Telecomi Mobile"

    const-string/jumbo v4, "Ghana Telecommunications Company Ltd"

    const/16 v1, 0x26c

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x345

    aput-object v0, v6, v1

    .line 1503
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "tiGO"

    const-string/jumbo v4, "Millicom Ghana Limited"

    const/16 v1, 0x26c

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x346

    aput-object v0, v6, v1

    .line 1508
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Celtel Nigeria Ltd."

    const/16 v1, 0x26d

    const/16 v2, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x347

    aput-object v0, v6, v1

    .line 1509
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "MTN Nigeria Communications Limited"

    const/16 v1, 0x26d

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x348

    aput-object v0, v6, v1

    .line 1510
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "M-Tel"

    const-string/jumbo v4, "Nigerian Mobile Telecommunications Limited"

    const/16 v1, 0x26d

    const/16 v2, 0x28

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x349

    aput-object v0, v6, v1

    .line 1511
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Glo"

    const-string/jumbo v4, "Globacom Ltd"

    const/16 v1, 0x26d

    const/16 v2, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x34a

    aput-object v0, v6, v1

    .line 1516
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "CelTel Tchad SA"

    const/16 v1, 0x26e

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x34b

    aput-object v0, v6, v1

    .line 1517
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TIGO - Millicom"

    const-string/jumbo v4, "TIGO - Millicom"

    const/16 v1, 0x26e

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x34c

    aput-object v0, v6, v1

    .line 1522
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CTP"

    const-string/jumbo v4, "Centrafrique Telecom Plus"

    const/16 v1, 0x26f

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x34d

    aput-object v0, v6, v1

    .line 1523
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TC"

    const-string/jumbo v4, "iTelecel Centrafrique"

    const/16 v1, 0x26f

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x34e

    aput-object v0, v6, v1

    .line 1524
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange RCA"

    const/16 v1, 0x26f

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x34f

    aput-object v0, v6, v1

    .line 1525
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Nationlink"

    const-string/jumbo v4, "Nationlink Telecom RCA"

    const/16 v1, 0x26f

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x350

    aput-object v0, v6, v1

    .line 1530
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN-Cameroon"

    const-string/jumbo v4, "Mobile Telephone Network Cameroon Ltd"

    const/16 v1, 0x270

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x351

    aput-object v0, v6, v1

    .line 1531
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Cameroun S.A."

    const/16 v1, 0x270

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x352

    aput-object v0, v6, v1

    .line 1536
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CMOVEL"

    const-string/jumbo v4, "CVMovel, S.A."

    const/16 v1, 0x271

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x353

    aput-object v0, v6, v1

    .line 1541
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CSTmovel"

    const-string/jumbo v4, "Companhia Santomese de Telecomunicacoe"

    const/16 v1, 0x272

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x354

    aput-object v0, v6, v1

    .line 1546
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange GQ"

    const-string/jumbo v4, "GETESA"

    const/16 v1, 0x273

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x355

    aput-object v0, v6, v1

    .line 1551
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Libertis"

    const-string/jumbo v4, "Libertis S.A."

    const/16 v1, 0x274

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x356

    aput-object v0, v6, v1

    .line 1552
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Moov (Telecel) Gabon S.A."

    const-string/jumbo v4, "Moov (Telecel) Gabon S.A."

    const/16 v1, 0x274

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x357

    aput-object v0, v6, v1

    .line 1553
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Celtel Gabon S.A."

    const/16 v1, 0x274

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x358

    aput-object v0, v6, v1

    .line 1558
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Libertis Telecom"

    const-string/jumbo v4, "MTN CONGO S.A"

    const/16 v1, 0x275

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x359

    aput-object v0, v6, v1

    .line 1563
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodacom"

    const-string/jumbo v4, "Vodacom Congo RDC sprl"

    const/16 v1, 0x276

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x35a

    aput-object v0, v6, v1

    .line 1564
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Celtel Congo"

    const/16 v1, 0x276

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x35b

    aput-object v0, v6, v1

    .line 1565
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Supercell"

    const-string/jumbo v4, "Supercell SPRL"

    const/16 v1, 0x276

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x35c

    aput-object v0, v6, v1

    .line 1566
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CCT"

    const-string/jumbo v4, "Congo-Chine Telecom s.a.r.l"

    const/16 v1, 0x276

    const/16 v2, 0x56

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x35d

    aput-object v0, v6, v1

    .line 1567
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SAIT Telecom"

    const-string/jumbo v4, "OASIS SPRL"

    const/16 v1, 0x276

    const/16 v2, 0x59

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x35e

    aput-object v0, v6, v1

    .line 1572
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "UNITEL"

    const-string/jumbo v4, "UNITEL S.a.r.l."

    const/16 v1, 0x277

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x35f

    aput-object v0, v6, v1

    .line 1577
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Areeba"

    const-string/jumbo v4, "Spacetel Guine-Bissau S.A."

    const/16 v1, 0x278

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x360

    aput-object v0, v6, v1

    .line 1582
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mdeiatech International"

    const-string/jumbo v4, "Mdeiatech International Ltd."

    const/16 v1, 0x279

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x361

    aput-object v0, v6, v1

    .line 1587
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobitel/Mobile Telephone Company"

    .line 1588
    const-string/jumbo v4, "Mobitel/Mobile Telephone Company"

    .line 1587
    const/16 v1, 0x27a

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x362

    aput-object v0, v6, v1

    .line 1589
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "MTN Sudan"

    const/16 v1, 0x27a

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x363

    aput-object v0, v6, v1

    .line 1594
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "MTN Rwandacell SARL"

    const/16 v1, 0x27b

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x364

    aput-object v0, v6, v1

    .line 1599
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ETMTN"

    const-string/jumbo v4, "Ethiopian Telecommmunications Corporation"

    const/16 v1, 0x27c

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x365

    aput-object v0, v6, v1

    .line 1604
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Somafona"

    const-string/jumbo v4, "Somafona FZLLC"

    const/16 v1, 0x27d

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x366

    aput-object v0, v6, v1

    .line 1605
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Nationalink"

    const-string/jumbo v4, "Nationalink"

    const/16 v1, 0x27d

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x367

    aput-object v0, v6, v1

    .line 1606
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Hormuud"

    const-string/jumbo v4, "Hormuud Telecom Somalia Inc"

    const/16 v1, 0x27d

    const/16 v2, 0x13

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x368

    aput-object v0, v6, v1

    .line 1607
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Golis"

    const-string/jumbo v4, "Golis Telecommunications Company"

    const/16 v1, 0x27d

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x369

    aput-object v0, v6, v1

    .line 1608
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telcom Mobile"

    const-string/jumbo v4, "Telcom Mobile"

    const/16 v1, 0x27d

    const/16 v2, 0x3e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x36a

    aput-object v0, v6, v1

    .line 1609
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telcom Mobile"

    const-string/jumbo v4, "Telcom Mobile"

    const/16 v1, 0x27d

    const/16 v2, 0x41

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x36b

    aput-object v0, v6, v1

    .line 1610
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telcom Somalia"

    const-string/jumbo v4, "Telcom Somalia"

    const/16 v1, 0x27d

    const/16 v2, 0x52

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x36c

    aput-object v0, v6, v1

    .line 1615
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Evatis"

    const-string/jumbo v4, "Djibouti Telecom SA"

    const/16 v1, 0x27e

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x36d

    aput-object v0, v6, v1

    .line 1620
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Safaricom"

    const-string/jumbo v4, "Safaricom Limited"

    const/16 v1, 0x27f

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x36e

    aput-object v0, v6, v1

    .line 1621
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Celtel Kenya Limited"

    const/16 v1, 0x27f

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x36f

    aput-object v0, v6, v1

    .line 1622
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange Kenya"

    const-string/jumbo v4, "Telkom Kemya"

    const/16 v1, 0x27f

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x370

    aput-object v0, v6, v1

    .line 1627
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mobitel"

    const-string/jumbo v4, "MIC Tanzania Limited"

    const/16 v1, 0x280

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x371

    aput-object v0, v6, v1

    .line 1628
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zantel"

    const-string/jumbo v4, "Zanzibar Telecom Ltd"

    const/16 v1, 0x280

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x372

    aput-object v0, v6, v1

    .line 1629
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodacom"

    const-string/jumbo v4, "Vodacom Tanzania Limited"

    const/16 v1, 0x280

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x373

    aput-object v0, v6, v1

    .line 1634
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "MTN Uganda"

    const/16 v1, 0x281

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x374

    aput-object v0, v6, v1

    .line 1635
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Uganda"

    const/16 v1, 0x281

    const/16 v2, 0xe

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x375

    aput-object v0, v6, v1

    .line 1636
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Warid Telecom"

    const-string/jumbo v4, "Warid Telecom"

    const/16 v1, 0x281

    const/16 v2, 0x16

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x376

    aput-object v0, v6, v1

    .line 1641
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Spacetel"

    const-string/jumbo v4, "Econet Wireless Burundi PLC"

    const/16 v1, 0x282

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x377

    aput-object v0, v6, v1

    .line 1642
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Aficell"

    const-string/jumbo v4, "Africell PLC"

    const/16 v1, 0x282

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x378

    aput-object v0, v6, v1

    .line 1643
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telecel"

    const-string/jumbo v4, "Telecel Burundi Company"

    const/16 v1, 0x282

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x379

    aput-object v0, v6, v1

    .line 1648
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "mCel"

    const-string/jumbo v4, "Mocambique Celular S.A.R.L."

    const/16 v1, 0x283

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x37a

    aput-object v0, v6, v1

    .line 1653
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Zain"

    const/16 v1, 0x285

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x37b

    aput-object v0, v6, v1

    .line 1654
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "MTN"

    const/16 v1, 0x285

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x37c

    aput-object v0, v6, v1

    .line 1655
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ZAMTEL"

    const-string/jumbo v4, "ZAMTEL"

    const/16 v1, 0x285

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x37d

    aput-object v0, v6, v1

    .line 1660
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Celtel"

    const/16 v1, 0x286

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x37e

    aput-object v0, v6, v1

    .line 1661
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange Madagascar S.A."

    const/16 v1, 0x286

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x37f

    aput-object v0, v6, v1

    .line 1662
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telma"

    const-string/jumbo v4, "Telma Mobile S.A."

    const/16 v1, 0x286

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x380

    aput-object v0, v6, v1

    .line 1667
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange La Reunion"

    const/16 v1, 0x287

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x381

    aput-object v0, v6, v1

    .line 1668
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Outremer"

    const-string/jumbo v4, "Outremer Telecom"

    const/16 v1, 0x287

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x382

    aput-object v0, v6, v1

    .line 1669
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SFR Reunion"

    const-string/jumbo v4, "Societe Reunionnaisei de Radiotelephone"

    const/16 v1, 0x287

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x383

    aput-object v0, v6, v1

    .line 1674
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Net*One"

    const-string/jumbo v4, "Net*One cellular (Pvt) Ltd"

    const/16 v1, 0x288

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x384

    aput-object v0, v6, v1

    .line 1675
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telecel"

    const-string/jumbo v4, "Telecel Zimbabwe (PVT) Ltd"

    const/16 v1, 0x288

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x385

    aput-object v0, v6, v1

    .line 1676
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Econet"

    const-string/jumbo v4, "Econet Wireless (Private) Limited"

    const/16 v1, 0x288

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x386

    aput-object v0, v6, v1

    .line 1681
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTC"

    const-string/jumbo v4, "MTC Namibia"

    const/16 v1, 0x289

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x387

    aput-object v0, v6, v1

    .line 1682
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cell One"

    const-string/jumbo v4, "Telecel Globe (Orascom)"

    const/16 v1, 0x289

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x388

    aput-object v0, v6, v1

    .line 1687
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TNM"

    const-string/jumbo v4, "Telecom Network Malawi"

    const/16 v1, 0x28a

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x389

    aput-object v0, v6, v1

    .line 1688
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Zain"

    const-string/jumbo v4, "Celtel Limited"

    const/16 v1, 0x28a

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x38a

    aput-object v0, v6, v1

    .line 1693
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodacom"

    const-string/jumbo v4, "Vodacom Lesotho (Pty) Ltd"

    const/16 v1, 0x28b

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x38b

    aput-object v0, v6, v1

    .line 1698
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Mascom"

    const-string/jumbo v4, "Mascom Wirelessi (Pty) Limited"

    const/16 v1, 0x28c

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x38c

    aput-object v0, v6, v1

    .line 1699
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Orange"

    const-string/jumbo v4, "Orange (Botswans) Pty Limited"

    const/16 v1, 0x28c

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x38d

    aput-object v0, v6, v1

    .line 1700
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "BTC Mobile"

    const-string/jumbo v4, "Botswana Telecommunications Corporation"

    const/16 v1, 0x28c

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x38e

    aput-object v0, v6, v1

    .line 1705
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodacom"

    const-string/jumbo v4, "Vodacom"

    const/16 v1, 0x28f

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x38f

    aput-object v0, v6, v1

    .line 1706
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telkom"

    const-string/jumbo v4, "Telkom"

    const/16 v1, 0x28f

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x390

    aput-object v0, v6, v1

    .line 1707
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cell C"

    const-string/jumbo v4, "Cell C"

    const/16 v1, 0x28f

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x391

    aput-object v0, v6, v1

    .line 1708
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MTN"

    const-string/jumbo v4, "MTN Group"

    const/16 v1, 0x28f

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x392

    aput-object v0, v6, v1

    .line 1713
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Eritel"

    const-string/jumbo v4, "Eritel Telecommunications Services Corporation"

    const/16 v1, 0x291

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x393

    aput-object v0, v6, v1

    .line 1718
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Belize Telemedia"

    const-string/jumbo v4, "Belize Telemedia"

    const/16 v1, 0x2be

    const/16 v2, 0x43

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x394

    aput-object v0, v6, v1

    .line 1719
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "International Telecommunications Ltd."

    .line 1720
    const-string/jumbo v4, "International Telecommunications Ltd."

    .line 1719
    const/16 v1, 0x2be

    const/16 v2, 0x44

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x395

    aput-object v0, v6, v1

    .line 1725
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    .line 1726
    const-string/jumbo v4, "Servicios de Comunicaciones Personales Inalambricas (SRECOM)"

    .line 1725
    const/16 v1, 0x2c0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x396

    aput-object v0, v6, v1

    .line 1727
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Comcel / Tigo"

    const-string/jumbo v4, "Millicom / Local partners"

    const/16 v1, 0x2c0

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x397

    aput-object v0, v6, v1

    .line 1728
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "movistar"

    const-string/jumbo v4, "Telefonica Moviles Guatemala (Telefonica)"

    const/16 v1, 0x2c0

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x398

    aput-object v0, v6, v1

    .line 1733
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CTE Telecom Personal"

    const-string/jumbo v4, "CTE Telecom Personal SA de CV"

    const/16 v1, 0x2c2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x399

    aput-object v0, v6, v1

    .line 1734
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "digicel"

    const-string/jumbo v4, "Digicel Group"

    const/16 v1, 0x2c2

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x39a

    aput-object v0, v6, v1

    .line 1735
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Telemovil EL Salvador"

    const-string/jumbo v4, "Telemovil EL Salvador S.A"

    const/16 v1, 0x2c2

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x39b

    aput-object v0, v6, v1

    .line 1736
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "movistar"

    const-string/jumbo v4, "Telfonica Moviles El Salvador"

    const/16 v1, 0x2c2

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x39c

    aput-object v0, v6, v1

    .line 1737
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "America Movil"

    const/16 v1, 0x2c2

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x39d

    aput-object v0, v6, v1

    .line 1742
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "Servicios de Comunicaciones de Honduras S.A. de C.V."

    const/16 v1, 0x2c4

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x39e

    aput-object v0, v6, v1

    .line 1743
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Celtel / Tigo"

    const-string/jumbo v4, "Celtel / Tigo"

    const/16 v1, 0x2c4

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x39f

    aput-object v0, v6, v1

    .line 1744
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "DIGICEL"

    const-string/jumbo v4, "Digicel de Honduras"

    const/16 v1, 0x2c4

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a0

    aput-object v0, v6, v1

    .line 1745
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Hondutel"

    const-string/jumbo v4, "Empresa Hondurena de telecomunicaciones"

    const/16 v1, 0x2c4

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a1

    aput-object v0, v6, v1

    .line 1750
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "Empresa Nicaraguense de Telecomunicaciones,S.A."

    const/16 v1, 0x2c6

    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a2

    aput-object v0, v6, v1

    .line 1751
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "movistar"

    const-string/jumbo v4, "Telefonica Moviles de Nicaragua S.A."

    const/16 v1, 0x2c6

    const/16 v2, 0x1e

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a3

    aput-object v0, v6, v1

    .line 1752
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "SERCOM"

    const-string/jumbo v4, "Servicios de Comunicaciones S.A."

    const/16 v1, 0x2c6

    const/16 v2, 0x49

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a4

    aput-object v0, v6, v1

    .line 1757
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ICE"

    const-string/jumbo v4, "Instituto Costarricense de Electricidad"

    const/16 v1, 0x2c8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a5

    aput-object v0, v6, v1

    .line 1758
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ICE"

    const-string/jumbo v4, "Instituto Costarricense de Electricidad"

    const/16 v1, 0x2c8

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a6

    aput-object v0, v6, v1

    .line 1763
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cable & Wireless"

    const-string/jumbo v4, "Cable & Wireless Panama S.A."

    const/16 v1, 0x2ca

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a7

    aput-object v0, v6, v1

    .line 1764
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "movistar"

    const-string/jumbo v4, "Telefonica Moviles Panama S.A"

    const/16 v1, 0x2ca

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a8

    aput-object v0, v6, v1

    .line 1765
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "Digicel (Panama) S.A."

    const/16 v1, 0x2ca

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3a9

    aput-object v0, v6, v1

    .line 1770
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "movistar"

    const-string/jumbo v4, "Telefonica Moviles Peru"

    const/16 v1, 0x2cc

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3aa

    aput-object v0, v6, v1

    .line 1771
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "America Movil Peru"

    const/16 v1, 0x2cc

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3ab

    aput-object v0, v6, v1

    .line 1776
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Movistar"

    const-string/jumbo v4, "Telefonica Moviles Argentina SA"

    const/16 v1, 0x2d2

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3ac

    aput-object v0, v6, v1

    .line 1777
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Movistar"

    const-string/jumbo v4, "Telefonica Moviles Argentina SA"

    const/16 v1, 0x2d2

    const/16 v2, 0x46

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3ad

    aput-object v0, v6, v1

    .line 1778
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "AMX Argentina S.A"

    const/16 v1, 0x2d2

    const/16 v2, 0x136

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3ae

    aput-object v0, v6, v1

    .line 1779
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "AMX Argentina S.A"

    const/16 v1, 0x2d2

    const/16 v2, 0x140

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3af

    aput-object v0, v6, v1

    .line 1780
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "AMX Argentina S.A"

    const/16 v1, 0x2d2

    const/16 v2, 0x14a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b0

    aput-object v0, v6, v1

    .line 1781
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Personal"

    const-string/jumbo v4, "Teecom Personal SA"

    const/16 v1, 0x2d2

    const/16 v2, 0x154

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b1

    aput-object v0, v6, v1

    .line 1786
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TIM"

    const-string/jumbo v4, "Telecom Italia Mobile"

    const/16 v1, 0x2d4

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b2

    aput-object v0, v6, v1

    .line 1787
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TIM"

    const-string/jumbo v4, "Telecom Italia Mobile"

    const/16 v1, 0x2d4

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b3

    aput-object v0, v6, v1

    .line 1788
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TIM"

    const-string/jumbo v4, "Telecom Italia Mobile"

    const/16 v1, 0x2d4

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b4

    aput-object v0, v6, v1

    .line 1789
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "Claro (America Movil)"

    const/16 v1, 0x2d4

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b5

    aput-object v0, v6, v1

    .line 1790
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vivo"

    const-string/jumbo v4, "Vivo S.A."

    const/16 v1, 0x2d4

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b6

    aput-object v0, v6, v1

    .line 1791
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "CTBC Celular"

    const-string/jumbo v4, "CTBC Telecom"

    const/16 v1, 0x2d4

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b7

    aput-object v0, v6, v1

    .line 1792
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "TIM"

    const-string/jumbo v4, "Telecom Italiz Mobile"

    const/16 v1, 0x2d4

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b8

    aput-object v0, v6, v1

    .line 1793
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vivo"

    const-string/jumbo v4, "Vivo S.A."

    const/16 v1, 0x2d4

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3b9

    aput-object v0, v6, v1

    .line 1794
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vivo"

    const-string/jumbo v4, "Vivo S.A."

    const/16 v1, 0x2d4

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3ba

    aput-object v0, v6, v1

    .line 1795
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Sercomtel"

    const-string/jumbo v4, "Sercomtel Celular"

    const/16 v1, 0x2d4

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3bb

    aput-object v0, v6, v1

    .line 1796
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Oi / Brasil Telecom"

    const-string/jumbo v4, "Brasil Telecom Celular SA"

    const/16 v1, 0x2d4

    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3bc

    aput-object v0, v6, v1

    .line 1797
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vivo"

    const-string/jumbo v4, "Vivo S.A."

    const/16 v1, 0x2d4

    const/16 v2, 0x17

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3bd

    aput-object v0, v6, v1

    .line 1798
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Oi / Amazonia Celular"

    const-string/jumbo v4, "Amazonia Celular S.A."

    const/16 v1, 0x2d4

    const/16 v2, 0x18

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3be

    aput-object v0, v6, v1

    .line 1799
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Oi"

    const-string/jumbo v4, "TNL PCS"

    const/16 v1, 0x2d4

    const/16 v2, 0x1f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3bf

    aput-object v0, v6, v1

    .line 1800
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "aeiou"

    const-string/jumbo v4, "Unicel do Brasil"

    const/16 v1, 0x2d4

    const/16 v2, 0x25

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c0

    aput-object v0, v6, v1

    .line 1805
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Entel"

    const-string/jumbo v4, "Entel Pcs"

    const/16 v1, 0x2da

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c1

    aput-object v0, v6, v1

    .line 1806
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "movistar"

    const-string/jumbo v4, "Movistar Chile"

    const/16 v1, 0x2da

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c2

    aput-object v0, v6, v1

    .line 1807
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "Claro Chile"

    const/16 v1, 0x2da

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c3

    aput-object v0, v6, v1

    .line 1808
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Entel"

    const-string/jumbo v4, "Entel Telefonica Movil"

    const/16 v1, 0x2da

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c4

    aput-object v0, v6, v1

    .line 1813
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Comcel"

    const-string/jumbo v4, "Comcel Colombia"

    const/16 v1, 0x2dc

    const/16 v2, 0x65

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c5

    aput-object v0, v6, v1

    .line 1814
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "movistar"

    const-string/jumbo v4, "Bellsouth Colombia"

    const/16 v1, 0x2dc

    const/16 v2, 0x66

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c6

    aput-object v0, v6, v1

    .line 1815
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tigo"

    const-string/jumbo v4, "Colombia Movil"

    const/16 v1, 0x2dc

    const/16 v2, 0x67

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c7

    aput-object v0, v6, v1

    .line 1816
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tigo"

    const-string/jumbo v4, "Colombia Movil"

    const/16 v1, 0x2dc

    const/16 v2, 0x6f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c8

    aput-object v0, v6, v1

    .line 1817
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "movistar"

    const-string/jumbo v4, "Telefonica Moviles Colombia"

    const/16 v1, 0x2dc

    const/16 v2, 0x7b

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3c9

    aput-object v0, v6, v1

    .line 1822
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digitel"

    const-string/jumbo v4, "Corporacion Digitel C.A."

    const/16 v1, 0x2de

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3ca

    aput-object v0, v6, v1

    .line 1823
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digitel"

    const-string/jumbo v4, "Corporacion Digitel C.A."

    const/16 v1, 0x2de

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3cb

    aput-object v0, v6, v1

    .line 1824
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digitel"

    const-string/jumbo v4, "Corporacion Digitel C.A."

    const/16 v1, 0x2de

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3cc

    aput-object v0, v6, v1

    .line 1825
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "movistar"

    const-string/jumbo v4, "Telefonica Moviles Venezuela"

    const/16 v1, 0x2de

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3cd

    aput-object v0, v6, v1

    .line 1826
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Movilnet"

    const-string/jumbo v4, "Telecommunicaciones Movilnet"

    const/16 v1, 0x2de

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3ce

    aput-object v0, v6, v1

    .line 1831
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Nuevatel"

    const-string/jumbo v4, "Nuevatel PCS De Bolivia SA"

    const/16 v1, 0x2e0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3cf

    aput-object v0, v6, v1

    .line 1832
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Entel"

    const-string/jumbo v4, "Entel SA"

    const/16 v1, 0x2e0

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d0

    aput-object v0, v6, v1

    .line 1833
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tigo"

    const-string/jumbo v4, "Telefonica Celular De Bolivia S.A"

    const/16 v1, 0x2e0

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d1

    aput-object v0, v6, v1

    .line 1838
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Digicel"

    const-string/jumbo v4, "U-Mobile (Cellular) Inc."

    const/16 v1, 0x2e2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d2

    aput-object v0, v6, v1

    .line 1843
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Movistar"

    const-string/jumbo v4, "Otecel S.A."

    const/16 v1, 0x2e4

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d3

    aput-object v0, v6, v1

    .line 1844
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Porta"

    const-string/jumbo v4, "America Movil"

    const/16 v1, 0x2e4

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d4

    aput-object v0, v6, v1

    .line 1849
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "VOX"

    const-string/jumbo v4, "Hola Paraguay S.A."

    const/16 v1, 0x2e8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d5

    aput-object v0, v6, v1

    .line 1850
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "AMX Paraguay S.A."

    const/16 v1, 0x2e8

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d6

    aput-object v0, v6, v1

    .line 1851
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tigo"

    const-string/jumbo v4, "Telefonica Celular Del Paraguay S.A. (Telecel)"

    const/16 v1, 0x2e8

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d7

    aput-object v0, v6, v1

    .line 1852
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Personal"

    const-string/jumbo v4, "Nucleo S.A."

    const/16 v1, 0x2e8

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d8

    aput-object v0, v6, v1

    .line 1857
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Ancel"

    const-string/jumbo v4, "Ancel"

    const/16 v1, 0x2ec

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3d9

    aput-object v0, v6, v1

    .line 1858
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Movistar"

    const-string/jumbo v4, "Telefonica Moviles Uruguay"

    const/16 v1, 0x2ec

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3da

    aput-object v0, v6, v1

    .line 1859
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Claro"

    const-string/jumbo v4, "AM Wireless Uruguay S.A."

    const/16 v1, 0x2ec

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3db

    aput-object v0, v6, v1

    .line 1864
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ICO"

    const-string/jumbo v4, "ICO Satellite Management"

    const/16 v1, 0x385

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3dc

    aput-object v0, v6, v1

    .line 1865
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Sense Communications International"

    .line 1866
    const-string/jumbo v4, "Sense Communications International"

    .line 1865
    const/16 v1, 0x385

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3dd

    aput-object v0, v6, v1

    .line 1867
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Iridium"

    const-string/jumbo v4, "Iridium"

    const/16 v1, 0x385

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3de

    aput-object v0, v6, v1

    .line 1868
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "GlobalStar"

    const-string/jumbo v4, "Globalstar"

    const/16 v1, 0x385

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3df

    aput-object v0, v6, v1

    .line 1869
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Thuraya RMSS Network"

    const-string/jumbo v4, "Thuraya RMSS Network"

    const/16 v1, 0x385

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e0

    aput-object v0, v6, v1

    .line 1870
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Thuraya Satellite telecommunications Company"

    .line 1871
    const-string/jumbo v4, "Thuraya Satellite Telecommunications Company"

    .line 1870
    const/16 v1, 0x385

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e1

    aput-object v0, v6, v1

    .line 1872
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Ellipso"

    const-string/jumbo v4, "Ellipso"

    const/16 v1, 0x385

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e2

    aput-object v0, v6, v1

    .line 1873
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Tele1 Europe"

    const-string/jumbo v4, "Tele1 Europe"

    const/16 v1, 0x385

    const/16 v2, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e3

    aput-object v0, v6, v1

    .line 1874
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "ACeS"

    const-string/jumbo v4, "ACeS"

    const/16 v1, 0x385

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e4

    aput-object v0, v6, v1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Immarsat"

    const-string/jumbo v4, "Immarsat"

    const/16 v1, 0x385

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e5

    aput-object v0, v6, v1

    .line 1879
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "MCP"

    const-string/jumbo v4, "Maritime Communications Partner AS"

    const/16 v1, 0x385

    const/16 v2, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e6

    aput-object v0, v6, v1

    .line 1884
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "GSM.AQ"

    const-string/jumbo v4, "GSM.AQ"

    const/16 v1, 0x385

    const/16 v2, 0xd

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e7

    aput-object v0, v6, v1

    .line 1889
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "AeroMobile AS"

    const-string/jumbo v4, "AeroMobile AS"

    const/16 v1, 0x385

    const/16 v2, 0xe

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e8

    aput-object v0, v6, v1

    .line 1890
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "OnAir Switzerland Sarl"

    const-string/jumbo v4, "OnAir Switzerland Sarl"

    const/16 v1, 0x385

    const/16 v2, 0xf

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3e9

    aput-object v0, v6, v1

    .line 1895
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Jasper Systems"

    const-string/jumbo v4, "Jasper Systems"

    const/16 v1, 0x385

    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3ea

    aput-object v0, v6, v1

    .line 1896
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Navitas"

    const-string/jumbo v4, "Navitas"

    const/16 v1, 0x385

    const/16 v2, 0x11

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3eb

    aput-object v0, v6, v1

    .line 1897
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Cingular Wireless"

    const-string/jumbo v4, "Cingular Wireless"

    const/16 v1, 0x385

    const/16 v2, 0x12

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3ec

    aput-object v0, v6, v1

    .line 1898
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const-string/jumbo v3, "Vodafone Malta Maritime"

    const-string/jumbo v4, "Vodafone Malta Maritime"

    const/16 v1, 0x385

    const/16 v2, 0x13

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    const/16 v1, 0x3ed

    aput-object v0, v6, v1

    .line 69
    sput-object v6, Landroid/provider/SpnProvider;->LIST_MCC_MNC_SPN:[Landroid/provider/SpnProvider$SPNObject;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSPNByMCCMNC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1903
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1904
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1905
    const-string/jumbo v2, "numeric should be a string and its length should be at least 4"

    .line 1904
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1907
    :cond_1
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1908
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v4, v3

    move-object v5, v3

    .line 1907
    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V

    .line 1909
    .local v0, "temp":Landroid/provider/SpnProvider$SPNObject;
    sget-object v2, Landroid/provider/SpnProvider;->LIST_MCC_MNC_SPN:[Landroid/provider/SpnProvider$SPNObject;

    array-length v3, v2

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v6, v2, v1

    .line 1910
    .local v6, "spn":Landroid/provider/SpnProvider$SPNObject;
    invoke-virtual {v0, v6}, Landroid/provider/SpnProvider$SPNObject;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1913
    iget-object v1, v6, Landroid/provider/SpnProvider$SPNObject;->spn:Ljava/lang/String;

    .line 1914
    const v2, 0x107005f

    .line 1915
    const v3, 0x1070060

    .line 1911
    invoke-static {p0, v1, v2, v3}, Landroid/util/NativeTextHelper;->getLocalString(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1909
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1918
    .end local v6    # "spn":Landroid/provider/SpnProvider$SPNObject;
    :cond_3
    const-string/jumbo v1, ""

    return-object v1
.end method
