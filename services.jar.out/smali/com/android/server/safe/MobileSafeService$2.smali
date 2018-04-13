.class Lcom/android/server/safe/MobileSafeService$2;
.super Ljava/lang/Object;
.source "MobileSafeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/safe/MobileSafeService;->showConfirmDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;

.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$permID:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/safe/MobileSafeService;Landroid/widget/CheckBox;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;
    .param p2, "val$cb"    # Landroid/widget/CheckBox;
    .param p3, "val$uid"    # I
    .param p4, "val$permID"    # I

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$2;->this$0:Lcom/android/server/safe/MobileSafeService;

    iput-object p2, p0, Lcom/android/server/safe/MobileSafeService$2;->val$cb:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/android/server/safe/MobileSafeService$2;->val$uid:I

    iput p4, p0, Lcom/android/server/safe/MobileSafeService$2;->val$permID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$2;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$2;->this$0:Lcom/android/server/safe/MobileSafeService;

    iget v1, p0, Lcom/android/server/safe/MobileSafeService$2;->val$uid:I

    iget v2, p0, Lcom/android/server/safe/MobileSafeService$2;->val$permID:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/safe/MobileSafeService;->-wrap22(Lcom/android/server/safe/MobileSafeService;III)V

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$2;->this$0:Lcom/android/server/safe/MobileSafeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/safe/MobileSafeService;->-wrap11(Lcom/android/server/safe/MobileSafeService;Z)V

    .line 886
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$2;->this$0:Lcom/android/server/safe/MobileSafeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/safe/MobileSafeService;->-set2(Lcom/android/server/safe/MobileSafeService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 880
    return-void
.end method
