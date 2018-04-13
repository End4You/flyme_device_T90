.class public final Landroid/safe/SafeUtils;
.super Ljava/lang/Object;
.source "SafeUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SafeUtils"

.field private static volatile sIMobileSafe:Landroid/safe/IMobileSafe;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMobileSafe()Landroid/safe/IMobileSafe;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Landroid/safe/SafeUtils;->sIMobileSafe:Landroid/safe/IMobileSafe;

    if-nez v0, :cond_0

    .line 17
    const-string/jumbo v0, "mobile_safe"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/safe/IMobileSafe$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafe;

    move-result-object v0

    sput-object v0, Landroid/safe/SafeUtils;->sIMobileSafe:Landroid/safe/IMobileSafe;

    .line 20
    :cond_0
    sget-object v0, Landroid/safe/SafeUtils;->sIMobileSafe:Landroid/safe/IMobileSafe;

    return-object v0
.end method
