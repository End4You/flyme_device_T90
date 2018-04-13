.class public Lorg/ifaa/android/manager/IFAAManagerFactory;
.super Ljava/lang/Object;
.source "IFAAManagerFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IFAAManagerFactory"

.field private static mInstance:Lorg/ifaa/android/manager/IFAAManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mInstance:Lorg/ifaa/android/manager/IFAAManager;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIFAAManager(Landroid/content/Context;I)Lorg/ifaa/android/manager/IFAAManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authType"    # I

    .prologue
    .line 16
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 17
    const-string/jumbo v0, "IFAAManagerFactory"

    const-string/jumbo v1, "not support Iris recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mInstance:Lorg/ifaa/android/manager/IFAAManager;

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerImpl;

    invoke-direct {v0, p0}, Lorg/ifaa/android/manager/IFAAManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mInstance:Lorg/ifaa/android/manager/IFAAManager;

    .line 24
    :cond_1
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mInstance:Lorg/ifaa/android/manager/IFAAManager;

    return-object v0
.end method
