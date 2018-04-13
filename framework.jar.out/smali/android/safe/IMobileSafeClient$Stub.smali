.class public abstract Landroid/safe/IMobileSafeClient$Stub;
.super Landroid/os/Binder;
.source "IMobileSafeClient.java"

# interfaces
.implements Landroid/safe/IMobileSafeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safe/IMobileSafeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safe/IMobileSafeClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.safe.IMobileSafeClient"

.field static final TRANSACTION_obtainDialogMessage:I = 0x2

.field static final TRANSACTION_obtainDialogMessage1:I = 0x4

.field static final TRANSACTION_obtainDialogMessageEx:I = 0x3

.field static final TRANSACTION_obtainDialogTitle:I = 0x5

.field static final TRANSACTION_onStartServiceNotify:I = 0x6

.field static final TRANSACTION_permissionDeniedNotify:I = 0x1

.field static final TRANSACTION_saveAutoRunRecord:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "android.safe.IMobileSafeClient"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafeClient;
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
    const-string/jumbo v1, "android.safe.IMobileSafeClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/safe/IMobileSafeClient;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/safe/IMobileSafeClient;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/safe/IMobileSafeClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/safe/IMobileSafeClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 14
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

    .line 178
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 42
    :sswitch_0
    const-string/jumbo v1, "android.safe.IMobileSafeClient"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    return v1

    .line 47
    :sswitch_1
    const-string/jumbo v1, "android.safe.IMobileSafeClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 53
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/safe/IMobileSafeClient$Stub;->permissionDeniedNotify(Ljava/lang/String;II)V

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    const/4 v1, 0x1

    return v1

    .line 60
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_2
    const-string/jumbo v1, "android.safe.IMobileSafeClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 68
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 74
    :goto_0
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/safe/IMobileSafeClient$Stub;->obtainDialogMessage(Ljava/lang/String;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v13

    .line 75
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x1

    return v1

    .line 72
    .end local v13    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg3":Landroid/os/Bundle;
    goto :goto_0

    .line 81
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v1, "android.safe.IMobileSafeClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 87
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 89
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 96
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 97
    .local v12, "_arg4_length":I
    if-gez v12, :cond_2

    .line 98
    const/4 v6, 0x0

    :goto_2
    move-object v1, p0

    .line 103
    invoke-virtual/range {v1 .. v6}, Landroid/safe/IMobileSafeClient$Stub;->obtainDialogMessageEx(Ljava/lang/String;IILandroid/os/Bundle;[I)Ljava/lang/String;

    move-result-object v13

    .line 104
    .restart local v13    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 107
    const/4 v1, 0x1

    return v1

    .line 93
    .end local v12    # "_arg4_length":I
    .end local v13    # "_result":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/os/Bundle;
    goto :goto_1

    .line 101
    .end local v5    # "_arg3":Landroid/os/Bundle;
    .restart local v12    # "_arg4_length":I
    :cond_2
    new-array v6, v12, [I

    .local v6, "_arg4":[I
    goto :goto_2

    .line 111
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v6    # "_arg4":[I
    .end local v12    # "_arg4_length":I
    :sswitch_4
    const-string/jumbo v1, "android.safe.IMobileSafeClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 117
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 119
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 125
    :goto_3
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/safe/IMobileSafeClient$Stub;->obtainDialogMessage1(Ljava/lang/String;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v13

    .line 126
    .restart local v13    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    const/4 v1, 0x1

    return v1

    .line 123
    .end local v13    # "_result":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/os/Bundle;
    goto :goto_3

    .line 132
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v1, "android.safe.IMobileSafeClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 140
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 146
    :goto_4
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/safe/IMobileSafeClient$Stub;->obtainDialogTitle(Ljava/lang/String;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v13

    .line 147
    .restart local v13    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x1

    return v1

    .line 144
    .end local v13    # "_result":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/os/Bundle;
    goto :goto_4

    .line 153
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v1, "android.safe.IMobileSafeClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 157
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v11, 0x1

    .line 162
    .local v11, "_arg3":Z
    :goto_5
    invoke-virtual {p0, v7, v8, v10, v11}, Landroid/safe/IMobileSafeClient$Stub;->onStartServiceNotify(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/4 v1, 0x1

    return v1

    .line 161
    .end local v11    # "_arg3":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    .line 168
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v1, "android.safe.IMobileSafeClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v9, 0x1

    .line 173
    .local v9, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v2, v9}, Landroid/safe/IMobileSafeClient$Stub;->saveAutoRunRecord(Ljava/lang/String;Z)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v1, 0x1

    return v1

    .line 172
    .end local v9    # "_arg1":Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
