.class public interface abstract Landroid/diagagent/IDiagRootAgentDaemon;
.super Ljava/lang/Object;
.source "IDiagRootAgentDaemon.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/diagagent/IDiagRootAgentDaemon$Stub;
    }
.end annotation


# virtual methods
.method public abstract getStable([B[B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setStable([B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
