.class public abstract Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterBrcmConfig.java"

# interfaces
.implements Lcom/broadcom/nfc/INfcAdapterBrcmConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/nfc/INfcAdapterBrcmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.nfc.INfcAdapterBrcmConfig"

.field static final TRANSACTION_getConfig:I = 0x2

.field static final TRANSACTION_getFirmwareConfig:I = 0x4

.field static final TRANSACTION_peekMemory:I = 0x6

.field static final TRANSACTION_setConfig:I = 0x1

.field static final TRANSACTION_setDefaultRouteDestinations:I = 0x7

.field static final TRANSACTION_setFirmwareConfig:I = 0x3

.field static final TRANSACTION_setReverseTagDetect:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.broadcom.nfc.INfcAdapterBrcmConfig"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/nfc/INfcAdapterBrcmConfig;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.broadcom.nfc.INfcAdapterBrcmConfig"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/nfc/INfcAdapterBrcmConfig;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/broadcom/nfc/INfcAdapterBrcmConfig;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 147
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 45
    :sswitch_0
    const-string/jumbo v11, "com.broadcom.nfc.INfcAdapterBrcmConfig"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v11, 0x1

    return v11

    .line 50
    :sswitch_1
    const-string/jumbo v11, "com.broadcom.nfc.INfcAdapterBrcmConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 56
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v9, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v11, 0x1

    return v11

    .line 57
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_2
    const-string/jumbo v11, "com.broadcom.nfc.INfcAdapterBrcmConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 v11, 0x1

    return v11

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v11, "com.broadcom.nfc.INfcAdapterBrcmConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 81
    .local v5, "_arg2":[B
    invoke-virtual {p0, v0, v1, v5}, Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub;->setFirmwareConfig(Ljava/lang/String;I[B)Z

    move-result v9

    .line 82
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v9, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v11, 0x1

    return v11

    .line 83
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v5    # "_arg2":[B
    .end local v9    # "_result":Z
    :sswitch_4
    const-string/jumbo v11, "com.broadcom.nfc.INfcAdapterBrcmConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub;->getFirmwareConfig(Ljava/lang/String;I)[B

    move-result-object v10

    .line 94
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 96
    const/4 v11, 0x1

    return v11

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v10    # "_result":[B
    :sswitch_5
    const-string/jumbo v11, "com.broadcom.nfc.INfcAdapterBrcmConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    const/4 v3, 0x1

    .line 105
    .local v3, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub;->setReverseTagDetect(Ljava/lang/String;Z)Z

    move-result v9

    .line 106
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v9, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v11, 0x1

    return v11

    .line 104
    .end local v3    # "_arg1":Z
    .end local v9    # "_result":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 107
    .restart local v3    # "_arg1":Z
    .restart local v9    # "_result":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 112
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v9    # "_result":Z
    :sswitch_6
    const-string/jumbo v11, "com.broadcom.nfc.INfcAdapterBrcmConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 120
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 121
    .local v7, "_arg3_length":I
    if-gez v7, :cond_4

    .line 122
    const/4 v6, 0x0

    .line 127
    :goto_4
    invoke-virtual {p0, v0, v1, v4, v6}, Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub;->peekMemory(Ljava/lang/String;II[I)[B

    move-result-object v10

    .line 128
    .restart local v10    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 130
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 131
    const/4 v11, 0x1

    return v11

    .line 125
    .end local v10    # "_result":[B
    :cond_4
    new-array v6, v7, [I

    .local v6, "_arg3":[I
    goto :goto_4

    .line 135
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v6    # "_arg3":[I
    .end local v7    # "_arg3_length":I
    :sswitch_7
    const-string/jumbo v11, "com.broadcom.nfc.INfcAdapterBrcmConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v0, v1, v4}, Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub;->setDefaultRouteDestinations(Ljava/lang/String;II)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v11, 0x1

    return v11

    .line 41
    nop

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
