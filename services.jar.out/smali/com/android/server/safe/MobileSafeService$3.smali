.class Lcom/android/server/safe/MobileSafeService$3;
.super Ljava/lang/Object;
.source "MobileSafeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/safe/MobileSafeService;->showConfirmHmctDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;

.field final synthetic val$permID:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/safe/MobileSafeService;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;
    .param p2, "val$uid"    # I
    .param p3, "val$permID"    # I

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$3;->this$0:Lcom/android/server/safe/MobileSafeService;

    iput p2, p0, Lcom/android/server/safe/MobileSafeService$3;->val$uid:I

    iput p3, p0, Lcom/android/server/safe/MobileSafeService$3;->val$permID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$3;->this$0:Lcom/android/server/safe/MobileSafeService;

    iget v1, p0, Lcom/android/server/safe/MobileSafeService$3;->val$uid:I

    iget v2, p0, Lcom/android/server/safe/MobileSafeService$3;->val$permID:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/safe/MobileSafeService;->-wrap22(Lcom/android/server/safe/MobileSafeService;III)V

    .line 955
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$3;->this$0:Lcom/android/server/safe/MobileSafeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/safe/MobileSafeService;->-wrap11(Lcom/android/server/safe/MobileSafeService;Z)V

    .line 956
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$3;->this$0:Lcom/android/server/safe/MobileSafeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/safe/MobileSafeService;->-set3(Lcom/android/server/safe/MobileSafeService;Lcom/hmct/hmcttheme/HmctAlertDialog;)Lcom/hmct/hmcttheme/HmctAlertDialog;

    .line 950
    return-void
.end method
