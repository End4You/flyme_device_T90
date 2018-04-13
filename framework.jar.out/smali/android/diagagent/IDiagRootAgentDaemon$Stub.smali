.class public abstract Landroid/diagagent/IDiagRootAgentDaemon$Stub;
.super Landroid/os/Binder;
.source "IDiagRootAgentDaemon.java"

# interfaces
.implements Landroid/diagagent/IDiagRootAgentDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/diagagent/IDiagRootAgentDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/diagagent/IDiagRootAgentDaemon$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.diagagent.IDiagRootAgentDaemon"

.field static final TRANSACTION_getStable:I = 0x1

.field static final TRANSACTION_setStable:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.diagagent.IDiagRootAgentDaemon"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/diagagent/IDiagRootAgentDaemon;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.diagagent.IDiagRootAgentDaemon"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/diagagent/IDiagRootAgentDaemon;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/diagagent/IDiagRootAgentDaemon;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/diagagent/IDiagRootAgentDaemon$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/diagagent/IDiagRootAgentDaemon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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
    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.diagagent.IDiagRootAgentDaemon"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v5

    .line 51
    :sswitch_1
    const-string/jumbo v4, "android.diagagent.IDiagRootAgentDaemon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 55
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 56
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Landroid/diagagent/IDiagRootAgentDaemon$Stub;->getStable([B[B)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v5

    .line 63
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "android.diagagent.IDiagRootAgentDaemon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 67
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 68
    .restart local v1    # "_arg1":[B
    invoke-virtual {p0, v0, v1}, Landroid/diagagent/IDiagRootAgentDaemon$Stub;->setStable([B[B)I

    move-result v2

    .line 69
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v5

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
