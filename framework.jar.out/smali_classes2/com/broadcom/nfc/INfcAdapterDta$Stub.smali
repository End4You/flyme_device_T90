.class public abstract Lcom/broadcom/nfc/INfcAdapterDta$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterDta.java"

# interfaces
.implements Lcom/broadcom/nfc/INfcAdapterDta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/nfc/INfcAdapterDta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/nfc/INfcAdapterDta$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.nfc.INfcAdapterDta"

.field static final TRANSACTION_config:I = 0x5

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_start:I = 0x4

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.broadcom.nfc.INfcAdapterDta"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/nfc/INfcAdapterDta;
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
    const-string/jumbo v1, "com.broadcom.nfc.INfcAdapterDta"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/nfc/INfcAdapterDta;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/broadcom/nfc/INfcAdapterDta;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/nfc/INfcAdapterDta$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/nfc/INfcAdapterDta$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 45
    :sswitch_0
    const-string/jumbo v6, "com.broadcom.nfc.INfcAdapterDta"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v5

    .line 50
    :sswitch_1
    const-string/jumbo v7, "com.broadcom.nfc.INfcAdapterDta"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .line 53
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/broadcom/nfc/INfcAdapterDta$Stub;->enable(Z)Z

    move-result v4

    .line 54
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v5

    .end local v1    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_1
    move v1, v6

    .line 52
    goto :goto_0

    .line 60
    :sswitch_2
    const-string/jumbo v7, "com.broadcom.nfc.INfcAdapterDta"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/broadcom/nfc/INfcAdapterDta$Stub;->disable()Z

    move-result v4

    .line 62
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return v5

    .line 68
    .end local v4    # "_result":Z
    :sswitch_3
    const-string/jumbo v7, "com.broadcom.nfc.INfcAdapterDta"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/broadcom/nfc/INfcAdapterDta$Stub;->stop()Z

    move-result v4

    .line 70
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_3

    move v6, v5

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return v5

    .line 76
    .end local v4    # "_result":Z
    :sswitch_4
    const-string/jumbo v7, "com.broadcom.nfc.INfcAdapterDta"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 81
    .local v3, "_arg1":[B
    invoke-virtual {p0, v0, v3}, Lcom/broadcom/nfc/INfcAdapterDta$Stub;->start(I[B)Z

    move-result v4

    .line 82
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v4, :cond_4

    move v6, v5

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v5

    .line 88
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :sswitch_5
    const-string/jumbo v7, "com.broadcom.nfc.INfcAdapterDta"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/broadcom/nfc/INfcAdapterDta$Stub;->config(II)Z

    move-result v4

    .line 94
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v4, :cond_5

    move v6, v5

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v5

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
