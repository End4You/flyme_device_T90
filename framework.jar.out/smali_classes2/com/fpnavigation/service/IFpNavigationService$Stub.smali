.class public abstract Lcom/fpnavigation/service/IFpNavigationService$Stub;
.super Landroid/os/Binder;
.source "IFpNavigationService.java"

# interfaces
.implements Lcom/fpnavigation/service/IFpNavigationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fpnavigation/service/IFpNavigationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fpnavigation/service/IFpNavigationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.fpnavigation.service.IFpNavigationService"

.field static final TRANSACTION_getKeyFromPhoneManager:I = 0x5

.field static final TRANSACTION_register:I = 0x3

.field static final TRANSACTION_startNavigation:I = 0x1

.field static final TRANSACTION_stopNavigation:I = 0x2

.field static final TRANSACTION_unRegister:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.fpnavigation.service.IFpNavigationService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/fpnavigation/service/IFpNavigationService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.fpnavigation.service.IFpNavigationService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/fpnavigation/service/IFpNavigationService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/fpnavigation/service/IFpNavigationService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/fpnavigation/service/IFpNavigationService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/fpnavigation/service/IFpNavigationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 43
    :sswitch_0
    const-string/jumbo v3, "com.fpnavigation.service.IFpNavigationService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v5, "com.fpnavigation.service.IFpNavigationService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/fpnavigation/service/IFpNavigationService$Stub;->startNavigation()Z

    move-result v2

    .line 50
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return v4

    .line 56
    .end local v2    # "_result":Z
    :sswitch_2
    const-string/jumbo v5, "com.fpnavigation.service.IFpNavigationService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/fpnavigation/service/IFpNavigationService$Stub;->stopNavigation()Z

    move-result v2

    .line 58
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v4

    .line 64
    .end local v2    # "_result":Z
    :sswitch_3
    const-string/jumbo v5, "com.fpnavigation.service.IFpNavigationService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/fpnavigation/service/IFpNavigationClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fpnavigation/service/IFpNavigationClient;

    move-result-object v1

    .line 67
    .local v1, "_arg0":Lcom/fpnavigation/service/IFpNavigationClient;
    invoke-virtual {p0, v1}, Lcom/fpnavigation/service/IFpNavigationService$Stub;->register(Lcom/fpnavigation/service/IFpNavigationClient;)Z

    move-result v2

    .line 68
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v4

    .line 74
    .end local v1    # "_arg0":Lcom/fpnavigation/service/IFpNavigationClient;
    .end local v2    # "_result":Z
    :sswitch_4
    const-string/jumbo v5, "com.fpnavigation.service.IFpNavigationService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/fpnavigation/service/IFpNavigationClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fpnavigation/service/IFpNavigationClient;

    move-result-object v1

    .line 77
    .restart local v1    # "_arg0":Lcom/fpnavigation/service/IFpNavigationClient;
    invoke-virtual {p0, v1}, Lcom/fpnavigation/service/IFpNavigationService$Stub;->unRegister(Lcom/fpnavigation/service/IFpNavigationClient;)Z

    move-result v2

    .line 78
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return v4

    .line 84
    .end local v1    # "_arg0":Lcom/fpnavigation/service/IFpNavigationClient;
    .end local v2    # "_result":Z
    :sswitch_5
    const-string/jumbo v3, "com.fpnavigation.service.IFpNavigationService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/fpnavigation/service/IFpNavigationService$Stub;->getKeyFromPhoneManager(I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v4

    .line 39
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