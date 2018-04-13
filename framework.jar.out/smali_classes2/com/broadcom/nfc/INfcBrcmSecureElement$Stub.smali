.class public abstract Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub;
.super Landroid/os/Binder;
.source "INfcBrcmSecureElement.java"

# interfaces
.implements Lcom/broadcom/nfc/INfcBrcmSecureElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/nfc/INfcBrcmSecureElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.nfc.INfcBrcmSecureElement"

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_disableMpos:I = 0x8

.field static final TRANSACTION_enableMpos:I = 0x7

.field static final TRANSACTION_getATR:I = 0x6

.field static final TRANSACTION_getSupportedTechnology:I = 0x4

.field static final TRANSACTION_isPresent:I = 0x5

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_transceive:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/nfc/INfcBrcmSecureElement;
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
    const-string/jumbo v1, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/nfc/INfcBrcmSecureElement;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/broadcom/nfc/INfcBrcmSecureElement;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 45
    :sswitch_0
    const-string/jumbo v7, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v8

    .line 50
    :sswitch_1
    const-string/jumbo v7, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 56
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 58
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 64
    :goto_0
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub;->open(Ljava/lang/String;Landroid/os/IBinder;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 65
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v6, :cond_1

    .line 67
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {v6, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    :goto_1
    return v8

    .line 62
    .end local v6    # "_result":Landroid/os/Bundle;
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg3":Landroid/os/Bundle;
    goto :goto_0

    .line 71
    .end local v5    # "_arg3":Landroid/os/Bundle;
    .restart local v6    # "_result":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 77
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v7, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 82
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2}, Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub;->close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    .line 83
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v6, :cond_2

    .line 85
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v6, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    :goto_2
    return v8

    .line 89
    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 95
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v7, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 100
    .local v3, "_arg1":[B
    invoke-virtual {p0, v0, v3}, Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub;->transceive(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v6

    .line 101
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v6, :cond_3

    .line 103
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v6, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    :goto_3
    return v8

    .line 107
    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v7, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub;->getSupportedTechnology(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v6

    .line 119
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v6, :cond_4

    .line 121
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v6, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    :goto_4
    return v8

    .line 125
    :cond_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v7, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 136
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub;->isPresent(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v6

    .line 137
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v6, :cond_5

    .line 139
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v6, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 145
    :goto_5
    return v8

    .line 143
    :cond_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 149
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v7, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub;->getATR(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v6

    .line 155
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v6, :cond_6

    .line 157
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v6, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    :goto_6
    return v8

    .line 161
    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 167
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v7, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 173
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 174
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub;->enableMpos(Ljava/lang/String;Landroid/os/IBinder;I)Landroid/os/Bundle;

    move-result-object v6

    .line 175
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v6, :cond_7

    .line 177
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {v6, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    :goto_7
    return v8

    .line 181
    :cond_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 187
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_8
    const-string/jumbo v7, "com.broadcom.nfc.INfcBrcmSecureElement"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 192
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2}, Lcom/broadcom/nfc/INfcBrcmSecureElement$Stub;->disableMpos(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    .line 193
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v6, :cond_8

    .line 195
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {v6, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    :goto_8
    return v8

    .line 199
    :cond_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

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
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
