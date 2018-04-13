.class final Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;
.super Ljava/lang/Object;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionDenyBody"
.end annotation


# instance fields
.field permID:I

.field pkgName:Ljava/lang/String;

.field uid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
