.class public final Landroid/safe/SafeFeature;
.super Ljava/lang/Object;
.source "SafeFeature.java"


# static fields
.field public static CTS_ENABLE:Z

.field public static final ENABLE:Z

.field public static final INTERRUN_MONITOR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    const-string/jumbo v0, "persist.sys.hmct.safe.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/safe/SafeFeature;->ENABLE:Z

    .line 9
    sget-boolean v0, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.ir.monitor"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    sput-boolean v0, Landroid/safe/SafeFeature;->INTERRUN_MONITOR:Z

    .line 11
    const-string/jumbo v0, "persist.sys.cts"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/safe/SafeFeature;->CTS_ENABLE:Z

    .line 5
    return-void

    :cond_0
    move v0, v1

    .line 9
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
