.class final Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;
.super Ljava/lang/Object;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutoRunMsgBody"
.end annotation


# instance fields
.field allow:Z

.field calledPkgName:Ljava/lang/String;

.field callingPkgName:Ljava/lang/String;

.field callingUid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
