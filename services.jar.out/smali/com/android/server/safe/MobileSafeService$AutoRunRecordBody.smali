.class Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;
.super Ljava/lang/Object;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoRunRecordBody"
.end annotation


# instance fields
.field allow:Z

.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;


# direct methods
.method constructor <init>(Lcom/android/server/safe/MobileSafeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
