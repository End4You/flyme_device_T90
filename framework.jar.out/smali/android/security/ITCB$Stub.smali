.class public abstract Landroid/security/ITCB$Stub;
.super Landroid/os/Binder;
.source "ITCB.java"

# interfaces
.implements Landroid/security/ITCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/ITCB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/ITCB$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.tcb"

.field static final TRANSACTION_invoke_ta_command:I = 0x1

.field static final TRANSACTION_rpmb_clear:I = 0x5

.field static final TRANSACTION_rpmb_get:I = 0x4

.field static final TRANSACTION_rpmb_set:I = 0x3

.field static final TRANSACTION_update_ta:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 144
    const-string/jumbo v0, "android.security.tcb"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/ITCB;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 132
    if-nez p0, :cond_0

    .line 133
    return-object v1

    .line 135
    :cond_0
    const-string/jumbo v1, "android.security.tcb"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/ITCB;

    if-eqz v1, :cond_1

    .line 137
    check-cast v0, Landroid/security/ITCB;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 139
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/security/ITCB$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/ITCB$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 148
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
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
    .line 154
    packed-switch p1, :pswitch_data_0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 156
    :pswitch_0
    const-string/jumbo v0, "android.security.tcb"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    return v0

    .line 154
    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch
.end method
