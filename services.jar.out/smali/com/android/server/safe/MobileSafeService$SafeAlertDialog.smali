.class public final Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;
.super Landroid/app/AlertDialog;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SafeAlertDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;


# direct methods
.method public constructor <init>(Lcom/android/server/safe/MobileSafeService;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->this$0:Lcom/android/server/safe/MobileSafeService;

    .line 1218
    const/4 v0, 0x5

    invoke-direct {p0, p2, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1217
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .prologue
    .line 1223
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 1224
    invoke-virtual {p0}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x102034a

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1222
    return-void
.end method
