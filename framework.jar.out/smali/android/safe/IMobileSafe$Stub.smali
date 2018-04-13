.class public abstract Landroid/safe/IMobileSafe$Stub;
.super Landroid/os/Binder;
.source "IMobileSafe.java"

# interfaces
.implements Landroid/safe/IMobileSafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safe/IMobileSafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safe/IMobileSafe$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.safe.IMobileSafe"

.field static final TRANSACTION_addPermission:I = 0x3

.field static final TRANSACTION_addWhiteList:I = 0x11

.field static final TRANSACTION_checkPermission:I = 0x1

.field static final TRANSACTION_checkStartServicePerm:I = 0x9

.field static final TRANSACTION_deleteXml:I = 0x6

.field static final TRANSACTION_enable:I = 0x8

.field static final TRANSACTION_enterSafteyMode:I = 0xf

.field static final TRANSACTION_exitSafteyMode:I = 0x10

.field static final TRANSACTION_getAllPackageInfoEx:I = 0x4

.field static final TRANSACTION_getAssociatePkgAndState:I = 0xa

.field static final TRANSACTION_getPackageInfoExByUid:I = 0x5

.field static final TRANSACTION_getWhiteList:I = 0x12

.field static final TRANSACTION_interceptIncomingSms:I = 0xd

.field static final TRANSACTION_isInSafetyMode:I = 0xe

.field static final TRANSACTION_modifyAssociateRunAppState:I = 0xb

.field static final TRANSACTION_modifyPermission:I = 0x2

.field static final TRANSACTION_registerClient:I = 0x7

.field static final TRANSACTION_storeAutoRunRecord:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "android.safe.IMobileSafe"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafe;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "android.safe.IMobileSafe"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/safe/IMobileSafe;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/safe/IMobileSafe;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/safe/IMobileSafe$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/safe/IMobileSafe$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 244
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v25

    return v25

    .line 42
    :sswitch_0
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/16 v25, 0x1

    return v25

    .line 47
    :sswitch_1
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 51
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 53
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 55
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_0

    .line 56
    sget-object v25, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/Bundle;

    .line 61
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v10, v1, v2}, Landroid/safe/IMobileSafe$Stub;->checkPermission(IILjava/lang/String;Landroid/os/Bundle;)I

    move-result v19

    .line 62
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/16 v25, 0x1

    return v25

    .line 59
    .end local v19    # "_result":I
    :cond_0
    const/16 v18, 0x0

    .local v18, "_arg3":Landroid/os/Bundle;
    goto :goto_0

    .line 68
    .end local v4    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 74
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1

    const/16 v17, 0x1

    .line 75
    .local v17, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v12, v13, v1}, Landroid/safe/IMobileSafe$Stub;->modifyPermission(IJZ)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/16 v25, 0x1

    return v25

    .line 74
    .end local v17    # "_arg2":Z
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 81
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":J
    :sswitch_3
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_2

    .line 84
    sget-object v25, Landroid/safe/PackageInfoEx;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/safe/PackageInfoEx;

    .line 89
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/safe/IMobileSafe$Stub;->addPermission(Landroid/safe/PackageInfoEx;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/16 v25, 0x1

    return v25

    .line 87
    :cond_2
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/safe/PackageInfoEx;
    goto :goto_2

    .line 95
    .end local v6    # "_arg0":Landroid/safe/PackageInfoEx;
    :sswitch_4
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/safe/IMobileSafe$Stub;->getAllPackageInfoEx()Ljava/util/List;

    move-result-object v22

    .line 97
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/safe/PackageInfoEx;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 99
    const/16 v25, 0x1

    return v25

    .line 103
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/safe/PackageInfoEx;>;"
    :sswitch_5
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/safe/IMobileSafe$Stub;->getPackageInfoExByUid(I)Landroid/safe/PackageInfoEx;

    move-result-object v20

    .line 107
    .local v20, "_result":Landroid/safe/PackageInfoEx;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v20, :cond_3

    .line 109
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/16 v25, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/safe/PackageInfoEx;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    :goto_3
    const/16 v25, 0x1

    return v25

    .line 113
    :cond_3
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 119
    .end local v4    # "_arg0":I
    .end local v20    # "_result":Landroid/safe/PackageInfoEx;
    :sswitch_6
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 123
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Landroid/safe/IMobileSafe$Stub;->deleteXml(ILjava/lang/String;)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/16 v25, 0x1

    return v25

    .line 130
    .end local v4    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/safe/IMobileSafeClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafeClient;

    move-result-object v5

    .line 133
    .local v5, "_arg0":Landroid/safe/IMobileSafeClient;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/safe/IMobileSafe$Stub;->registerClient(Landroid/safe/IMobileSafeClient;)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/16 v25, 0x1

    return v25

    .line 139
    .end local v5    # "_arg0":Landroid/safe/IMobileSafeClient;
    :sswitch_8
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_4

    const/4 v9, 0x1

    .line 142
    .local v9, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/safe/IMobileSafe$Stub;->enable(Z)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/16 v25, 0x1

    return v25

    .line 141
    .end local v9    # "_arg0":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 148
    :sswitch_9
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 154
    .restart local v11    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 155
    .restart local v16    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Landroid/safe/IMobileSafe$Stub;->checkStartServicePerm(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    .line 156
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v24, :cond_5

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/16 v25, 0x1

    return v25

    .line 157
    :cond_5
    const/16 v25, 0x0

    goto :goto_5

    .line 162
    .end local v4    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v24    # "_result":Z
    :sswitch_a
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/safe/IMobileSafe$Stub;->getAssociatePkgAndState()Ljava/util/List;

    move-result-object v21

    .line 164
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/safe/AutoRunPkgInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 166
    const/16 v25, 0x1

    return v25

    .line 170
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/safe/AutoRunPkgInfo;>;"
    :sswitch_b
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_6

    const/4 v14, 0x1

    .line 175
    .local v14, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/safe/IMobileSafe$Stub;->modifyAssociateRunAppState(Ljava/lang/String;Z)V

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/16 v25, 0x1

    return v25

    .line 174
    .end local v14    # "_arg1":Z
    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    .line 181
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 185
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_7

    const/4 v14, 0x1

    .line 186
    .restart local v14    # "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/safe/IMobileSafe$Stub;->storeAutoRunRecord(Ljava/lang/String;Z)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/16 v25, 0x1

    return v25

    .line 185
    .end local v14    # "_arg1":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_7

    .line 192
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 196
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 198
    .restart local v11    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 199
    .local v15, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11, v15}, Landroid/safe/IMobileSafe$Stub;->interceptIncomingSms(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v24

    .line 200
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v24, :cond_8

    const/16 v25, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/16 v25, 0x1

    return v25

    .line 201
    :cond_8
    const/16 v25, 0x0

    goto :goto_8

    .line 206
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v24    # "_result":Z
    :sswitch_e
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/safe/IMobileSafe$Stub;->isInSafetyMode()Z

    move-result v24

    .line 208
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v24, :cond_9

    const/16 v25, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/16 v25, 0x1

    return v25

    .line 209
    :cond_9
    const/16 v25, 0x0

    goto :goto_9

    .line 214
    .end local v24    # "_result":Z
    :sswitch_f
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/safe/IMobileSafe$Stub;->enterSafteyMode()V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/16 v25, 0x1

    return v25

    .line 221
    :sswitch_10
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/safe/IMobileSafe$Stub;->exitSafteyMode()V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/16 v25, 0x1

    return v25

    .line 228
    :sswitch_11
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 231
    .local v8, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/safe/IMobileSafe$Stub;->addWhiteList(Ljava/util/List;)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/16 v25, 0x1

    return v25

    .line 237
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_12
    const-string/jumbo v25, "android.safe.IMobileSafe"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/safe/IMobileSafe$Stub;->getWhiteList()Ljava/util/List;

    move-result-object v23

    .line 239
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 241
    const/16 v25, 0x1

    return v25

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
