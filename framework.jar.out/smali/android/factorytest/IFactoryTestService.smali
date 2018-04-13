.class public interface abstract Landroid/factorytest/IFactoryTestService;
.super Ljava/lang/Object;
.source "IFactoryTestService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/factorytest/IFactoryTestService$Stub;
    }
.end annotation


# virtual methods
.method public abstract reloadFactoryPolicy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
